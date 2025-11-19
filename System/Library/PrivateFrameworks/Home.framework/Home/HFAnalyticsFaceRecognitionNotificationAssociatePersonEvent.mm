@interface HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent
- (HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent

- (HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent)initWithData:(id)a3
{
  v4 = a3;
  objc_opt_class();
  v5 = [v4 objectForKeyedSubscript:@"faceRecognitionNotificationAssociatePersonCount"];
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
    NSLog(&cfstr_Hfanalyticsfac.isa);
  }

  objc_opt_class();
  v8 = [v4 objectForKeyedSubscript:@"faceRecognitionNotificationAssociatePersonSuccess"];
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
    NSLog(&cfstr_Hfanalyticsfac_0.isa);
  }

  v14.receiver = self;
  v14.super_class = HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent;
  v11 = [(HFAnalyticsEvent *)&v14 initWithEventType:5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_unknownPersonsTagCount, v6);
    objc_storeStrong(&v12->_openURLSuccess, v9);
  }

  return v12;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent *)self unknownPersonsTagCount];
  [v4 na_safeSetObject:v5 forKey:@"faceRecognitionNotificationAssociatePersonCount"];

  v6 = [(HFAnalyticsFaceRecognitionNotificationAssociatePersonEvent *)self openURLSuccess];
  [v4 na_safeSetObject:v6 forKey:@"faceRecognitionNotificationAssociatePersonSuccess"];

  return v4;
}

@end