@interface HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent
- (HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent)initWithData:(id)a3;
- (id)payload;
@end

@implementation HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent

- (HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent)initWithData:(id)a3
{
  v4 = a3;
  v17.receiver = self;
  v17.super_class = HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent;
  v5 = [(HFAnalyticsEvent *)&v17 initWithEventType:3];
  if (v5)
  {
    objc_opt_class();
    v6 = [v4 objectForKeyedSubscript:@"error"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    v9 = [v8 domain];
    v10 = v9;
    if (v9)
    {
      v11 = v9;
    }

    else
    {
      v11 = @"nil";
    }

    objc_storeStrong(&v5->_errorDomain, v11);

    v12 = MEMORY[0x277CCABB0];
    v13 = [v8 code];

    v14 = [v12 numberWithInteger:v13];
    errorCode = v5->_errorCode;
    v5->_errorCode = v14;
  }

  return v5;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent;
  v3 = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [v3 mutableCopy];

  v5 = [(HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent *)self errorDomain];
  [v4 na_safeSetObject:v5 forKey:@"errorDomain"];

  v6 = [(HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent *)self errorCode];
  [v4 na_safeSetObject:v6 forKey:@"errorCode"];

  return v4;
}

@end