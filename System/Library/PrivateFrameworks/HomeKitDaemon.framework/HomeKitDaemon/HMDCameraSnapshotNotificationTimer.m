@interface HMDCameraSnapshotNotificationTimer
- (HMDCameraSnapshotNotificationTimer)initWithCameraSessionID:(id)a3 changedCharacteristics:(id)a4 timeInterval:(double)a5;
@end

@implementation HMDCameraSnapshotNotificationTimer

- (HMDCameraSnapshotNotificationTimer)initWithCameraSessionID:(id)a3 changedCharacteristics:(id)a4 timeInterval:(double)a5
{
  v9 = a3;
  v10 = a4;
  v14.receiver = self;
  v14.super_class = HMDCameraSnapshotNotificationTimer;
  v11 = [(HMFTimer *)&v14 initWithTimeInterval:0 options:a5];
  v12 = v11;
  if (v11)
  {
    objc_storeStrong(&v11->_changedCharacteristics, a4);
    objc_storeStrong(&v12->_sessionID, a3);
  }

  return v12;
}

@end