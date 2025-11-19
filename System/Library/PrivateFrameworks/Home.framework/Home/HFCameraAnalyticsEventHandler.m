@interface HFCameraAnalyticsEventHandler
+ (id)decoratedPayloadFor:(id)a3;
+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)a3;
+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)a3;
+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)a3;
+ (id)sendDonationEventWithCameraClipCount:(unint64_t)a3 processName:(id)a4 error:(id)a5;
+ (void)sendEventNamed:(id)a3 payload:(id)a4;
@end

@implementation HFCameraAnalyticsEventHandler

+ (void)sendEventNamed:(id)a3 payload:(id)a4
{
  v16 = *MEMORY[0x277D85DE8];
  v5 = a3;
  v6 = [HFCameraAnalyticsEventHandler decoratedPayloadFor:a4];
  v7 = AnalyticsSendEventLazy();
  v8 = HFLogForCategory(6uLL);
  if (os_log_type_enabled(v8, OS_LOG_TYPE_DEFAULT))
  {
    *buf = 138412802;
    v11 = v5;
    v12 = 1024;
    v13 = v7;
    v14 = 2112;
    v15 = v6;
    _os_log_impl(&dword_20D9BF000, v8, OS_LOG_TYPE_DEFAULT, "Event:%@ didSucceed:%{BOOL}d payload:%@", buf, 0x1Cu);
  }

  v9 = *MEMORY[0x277D85DE8];
}

+ (id)sendAssociatedAccessoriesDidLaunchEventWithCount:(id)a3
{
  v10[1] = *MEMORY[0x277D85DE8];
  v9 = HFCameraAnalyticsCameraAccessoryCount;
  v10[0] = a3;
  v4 = MEMORY[0x277CBEAC0];
  v5 = a3;
  v6 = [v4 dictionaryWithObjects:v10 forKeys:&v9 count:1];

  [a1 sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidLaunch" payload:v6];
  v7 = *MEMORY[0x277D85DE8];

  return v6;
}

+ (id)sendAssociatedAccessoriesDidModifyListEventWithPayload:(id)a3
{
  v4 = a3;
  [a1 sendEventNamed:@"com.apple.Home.AssociatedAccessoriesDidModifySet" payload:v4];

  return v4;
}

+ (id)sendCameraClipPlayerDidUpdateEventWithError:(id)a3
{
  v13[2] = *MEMORY[0x277D85DE8];
  v12[0] = @"errorDomain";
  v4 = a3;
  v5 = [v4 domain];
  v13[0] = v5;
  v12[1] = @"errorCode";
  v6 = MEMORY[0x277CCABB0];
  v7 = [v4 code];

  v8 = [v6 numberWithInteger:v7];
  v13[1] = v8;
  v9 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v13 forKeys:v12 count:2];

  [a1 sendEventNamed:@"com.apple.Home.CameraClipPlayerDidUpdateError" payload:v9];
  v10 = *MEMORY[0x277D85DE8];

  return v9;
}

+ (id)sendDonationEventWithCameraClipCount:(unint64_t)a3 processName:(id)a4 error:(id)a5
{
  v15[3] = *MEMORY[0x277D85DE8];
  v8 = a4;
  v9 = [HFCameraAnalyticsEvent errorCodeForError:a5];
  v10 = [MEMORY[0x277CCABB0] numberWithUnsignedInteger:a3];
  v14[0] = HFCameraAnalyticsErrorCode;
  v14[1] = HFCameraAnalyticsProcessName;
  v15[0] = v9;
  v15[1] = v8;
  v14[2] = HFCameraAnalyticsCountKey;
  v15[2] = v10;
  v11 = [MEMORY[0x277CBEAC0] dictionaryWithObjects:v15 forKeys:v14 count:3];

  [a1 sendEventNamed:@"com.apple.Home.CameraClipDonationEvent" payload:v11];
  v12 = *MEMORY[0x277D85DE8];

  return v11;
}

+ (id)decoratedPayloadFor:(id)a3
{
  v3 = a3;
  v4 = +[HFCameraAnalyticsPayloadDecorator sharedDecorator];
  v5 = [v4 decoratePayload:v3];

  return v5;
}

@end