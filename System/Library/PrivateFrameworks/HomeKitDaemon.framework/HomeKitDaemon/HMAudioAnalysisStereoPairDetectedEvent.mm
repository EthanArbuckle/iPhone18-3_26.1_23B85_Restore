@interface HMAudioAnalysisStereoPairDetectedEvent
- (HMAudioAnalysisStereoPairDetectedEvent)initWithEventBulletin:(id)bulletin accessory:(id)accessory notificationUUID:(id)d;
@end

@implementation HMAudioAnalysisStereoPairDetectedEvent

- (HMAudioAnalysisStereoPairDetectedEvent)initWithEventBulletin:(id)bulletin accessory:(id)accessory notificationUUID:(id)d
{
  bulletinCopy = bulletin;
  accessoryCopy = accessory;
  dCopy = d;
  v15.receiver = self;
  v15.super_class = HMAudioAnalysisStereoPairDetectedEvent;
  v12 = [(HMAudioAnalysisStereoPairDetectedEvent *)&v15 init];
  v13 = v12;
  if (v12)
  {
    objc_storeStrong(&v12->_event, bulletin);
    objc_storeStrong(&v13->_accessory, accessory);
    objc_storeStrong(&v13->_notificationUUID, d);
  }

  return v13;
}

@end