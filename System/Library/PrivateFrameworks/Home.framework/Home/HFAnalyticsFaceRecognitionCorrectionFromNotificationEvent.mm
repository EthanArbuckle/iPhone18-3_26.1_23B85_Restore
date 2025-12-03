@interface HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent
- (HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent)initWithData:(id)data;
- (id)payload;
@end

@implementation HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent

- (HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent)initWithData:(id)data
{
  dataCopy = data;
  v17.receiver = self;
  v17.super_class = HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent;
  v5 = [(HFAnalyticsEvent *)&v17 initWithEventType:3];
  if (v5)
  {
    objc_opt_class();
    v6 = [dataCopy objectForKeyedSubscript:@"error"];
    if (objc_opt_isKindOfClass())
    {
      v7 = v6;
    }

    else
    {
      v7 = 0;
    }

    v8 = v7;

    domain = [v8 domain];
    v10 = domain;
    if (domain)
    {
      v11 = domain;
    }

    else
    {
      v11 = @"nil";
    }

    objc_storeStrong(&v5->_errorDomain, v11);

    v12 = MEMORY[0x277CCABB0];
    code = [v8 code];

    v14 = [v12 numberWithInteger:code];
    errorCode = v5->_errorCode;
    v5->_errorCode = v14;
  }

  return v5;
}

- (id)payload
{
  v8.receiver = self;
  v8.super_class = HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent;
  payload = [(HFAnalyticsEvent *)&v8 payload];
  v4 = [payload mutableCopy];

  errorDomain = [(HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent *)self errorDomain];
  [v4 na_safeSetObject:errorDomain forKey:@"errorDomain"];

  errorCode = [(HFAnalyticsFaceRecognitionCorrectionFromNotificationEvent *)self errorCode];
  [v4 na_safeSetObject:errorCode forKey:@"errorCode"];

  return v4;
}

@end