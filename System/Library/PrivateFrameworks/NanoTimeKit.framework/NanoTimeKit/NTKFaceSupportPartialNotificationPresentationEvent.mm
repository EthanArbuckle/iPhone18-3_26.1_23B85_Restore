@interface NTKFaceSupportPartialNotificationPresentationEvent
- (NTKFaceSupportPartialNotificationPresentationEvent)initWithIdentifier:(id)a3 pushDate:(id)a4;
- (NTKFaceSupportPartialNotificationPresentationEvent)presentationEventWithStatus:(int64_t)a3 artworkUsed:(int64_t)a4 errorCode:(int64_t)a5 optOutStatus:(int64_t)a6;
@end

@implementation NTKFaceSupportPartialNotificationPresentationEvent

- (NTKFaceSupportPartialNotificationPresentationEvent)initWithIdentifier:(id)a3 pushDate:(id)a4
{
  v6 = a3;
  v7 = a4;
  if ([v6 length] && (objc_msgSend(v6, "isEqualToString:", @"NTKFaceSupportPartialNotificationPresentationEventInvalidIdentifier") & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = NTKFaceSupportPartialNotificationPresentationEvent;
    v9 = [(NTKFaceSupportPartialNotificationPresentationEvent *)&v15 init];
    if (v9)
    {
      v10 = [v6 copy];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      objc_storeStrong(&v9->_pushDate, a4);
      v12 = [MEMORY[0x277CBEAA8] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = v12;
    }

    self = v9;
    v8 = self;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (NTKFaceSupportPartialNotificationPresentationEvent)presentationEventWithStatus:(int64_t)a3 artworkUsed:(int64_t)a4 errorCode:(int64_t)a5 optOutStatus:(int64_t)a6
{
  if (a3 == 777777)
  {
    v6 = 0;
  }

  else
  {
    v12 = [(NTKFaceSupportPartialNotificationPresentationEvent *)self identifier];
    v13 = [MEMORY[0x277CBEAA8] date];
    v14 = [(NTKFaceSupportPartialNotificationPresentationEvent *)self pushDate];
    v15 = [(NTKFaceSupportPartialNotificationPresentationEvent *)self creationDate];
    [v13 timeIntervalSinceDate:v14];
    v17 = v16;
    [v13 timeIntervalSinceDate:v15];
    v6 = [[NTKFaceSupportNotificationPresentationEvent alloc] initWithBundleIdentifier:v12 status:a3 artworkUsed:a4 delayFromServerPush:a5 delayFromBundleUnlock:a6 schedulingErrorCode:v17 optOutSources:v18];
  }

  return v6;
}

@end