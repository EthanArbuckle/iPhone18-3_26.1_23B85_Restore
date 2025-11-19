@interface HMAudioAnalysisStereoPairDetectedEvent
- (HMAudioAnalysisStereoPairDetectedEvent)initWithEventBulletin:(id)a3 accessory:(id)a4 notificationUUID:(id)a5;
@end

@implementation HMAudioAnalysisStereoPairDetectedEvent

- (HMAudioAnalysisStereoPairDetectedEvent)initWithEventBulletin:(id)a3 accessory:(id)a4 notificationUUID:(id)a5
{
  v9 = a3;
  v10 = a4;
  v11 = a5;
  v15.receiver = self;
  v15.super_class = HMAudioAnalysisStereoPairDetectedEvent;
  v12 = [(HMAudioAnalysisStereoPairDetectedEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_event, a3);
    objc_storeStrong(&v13->_accessory, a4);
    objc_storeStrong(&v13->_notificationUUID, a5);
  }

  return v13;
}

@end