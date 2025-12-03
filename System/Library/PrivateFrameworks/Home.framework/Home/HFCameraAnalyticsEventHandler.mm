@interface HFCameraAnalyticsEventHandler
+ (id)decoratedPayloadFor:(id)for;
+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)count;
+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)payload;
+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)error;
+ (id)sendDonationEventWithCameraClipCount:(unint64_t)count processName:(id)name error:(id)error;
+ (void)sendEventNamed:(id)named payload:(id)payload;
@end

@implementation HFCameraAnalyticsEventHandler

+ (void)sendEventNamed:(id)named payload:(id)payload
{
  v16 = *MEMORY[0x277D85DE8];
  namedCopy = named;
  v6 = [HFCameraAnalyticsEventHandler decoratedPayloadFor:payload];
  v7 = AnalyticsSendEventLazy();
  v8 = HFLogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = namedCopy;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Event:%@ didSucceed:%{BOOL}d payload:%@", buf, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)count
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = HFCameraAnalyticsCameraAccessoryCount;
  v10[0] = count;
  v4 = MEMORY[0x277CBEAC0];
  countCopy = count;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [self sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidLaunch" payload:v6];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)payload
{
  payloadCopy = payload;
  [self sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidModifySet" payload:payloadCopy];

  return payloadCopy;
}

+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)error
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"errorDomain";
  errorCopy = error;
  domain = [errorCopy domain];
  v13[0] = domain;
  v12[1] = @"errorCode";
  v6 = MEMORY[0x277CCABB0];
  code = [errorCopy code];

  v8 = [v6 numberWithInteger:code];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [self sendEventNamed:@"com.apple.Home.CameraClipPlayerDidUpdateError" payload:v9];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)sendDonationEventWithCameraClipCount:(unint64_t)count processName:(id)name error:(id)error
{
  v15[3] = *MEMORY[0x277D85DE8];
  nameCopy = name;
  v9 = [HFCameraAnalyticsEvent errorCodeForError:error];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:count];
  v14[0] = HFCameraAnalyticsErrorCode;
  v14[1] = HFCameraAnalyticsProcessName;
  v15[0] = v9;
  v15[1] = nameCopy;
  v14[2] = HFCameraAnalyticsCountKey;
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [self sendEventNamed:@"com.apple.Home.CameraClipDonationEvent" payload:v11];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decoratedPayloadFor:(id)for
{
  forCopy = for;
  v4 = +[HFCameraAnalyticsPayloadDecorator sharedDecorator];
  v5 = [v4 decoratePayload:forCopy];

  return v5;
}

@end