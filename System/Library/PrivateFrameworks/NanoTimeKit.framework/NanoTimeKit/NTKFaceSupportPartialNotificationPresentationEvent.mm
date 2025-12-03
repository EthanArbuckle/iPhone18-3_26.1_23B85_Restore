@interface NTKFaceSupportPartialNotificationPresentationEvent
- (NTKFaceSupportPartialNotificationPresentationEvent)initWithIdentifier:(id)identifier pushDate:(id)date;
- (NTKFaceSupportPartialNotificationPresentationEvent)presentationEventWithStatus:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus;
@end

@implementation NTKFaceSupportPartialNotificationPresentationEvent

- (NTKFaceSupportPartialNotificationPresentationEvent)initWithIdentifier:(id)identifier pushDate:(id)date
{
  identifierCopy = identifier;
  dateCopy = date;
  if ([identifierCopy length] && (objc_msgSend(identifierCopy, "isEqualToString:", @"NTKFaceSupportPartialNotificationPresentationEventInvalidIdentifier") & 1) == 0)
  {
    v15.receiver = self;
    v15.super_class = NTKFaceSupportPartialNotificationPresentationEvent;
    v9 = [(NTKFaceSupportPartialNotificationPresentationEvent *)&v15 init];
    if (v9)
    {
      v10 = [identifierCopy copy];
      identifier = v9->_identifier;
      v9->_identifier = v10;

      objc_storeStrong(&v9->_pushDate, date);
      date = [MEMORY[0x277CBEAA8] date];
      creationDate = v9->_creationDate;
      v9->_creationDate = date;
    }

    self = v9;
    selfCopy = self;
  }

  else
  {
    selfCopy = 0;
  }

  return selfCopy;
}

- (NTKFaceSupportPartialNotificationPresentationEvent)presentationEventWithStatus:(int64_t)status artworkUsed:(int64_t)used errorCode:(int64_t)code optOutStatus:(int64_t)outStatus
{
  if (status == 777777)
  {
    v6 = 0;
  }

  else
  {
    identifier = [(NTKFaceSupportPartialNotificationPresentationEvent *)self identifier];
    date = [MEMORY[0x277CBEAA8] date];
    pushDate = [(NTKFaceSupportPartialNotificationPresentationEvent *)self pushDate];
    creationDate = [(NTKFaceSupportPartialNotificationPresentationEvent *)self creationDate];
    [date timeIntervalSinceDate:pushDate];
    v17 = v16;
    [date timeIntervalSinceDate:creationDate];
    v6 = [[NTKFaceSupportNotificationPresentationEvent alloc] initWithBundleIdentifier:identifier status:status artworkUsed:used delayFromServerPush:code delayFromBundleUnlock:outStatus schedulingErrorCode:v17 optOutSources:v18];
  }

  return v6;
}

@end