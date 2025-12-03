@interface HMDCameraSnapshotNotificationTimer
- (HMDCameraSnapshotNotificationTimer)initWithCameraSessionID:(id)d changedCharacteristics:(id)characteristics timeInterval:(double)interval;
@end

@implementation HMDCameraSnapshotNotificationTimer

- (HMDCameraSnapshotNotificationTimer)initWithCameraSessionID:(id)d changedCharacteristics:(id)characteristics timeInterval:(double)interval
{
  dCopy = d;
  characteristicsCopy = characteristics;
  v14.receiver = self;
  v14.super_class = HMDCameraSnapshotNotificationTimer;
  v11 = [(HMFTimer *)&v14 initWithTimeInterval:0 options:interval];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changedCharacteristics, characteristics);
    objc_storeStrong(&v12->_sessionID, d);
  }

  return v12;
}

@end