@interface HMDCameraSnapshotCompletionTimer
- (HMDCameraSnapshotCompletionTimer)initWithSnapshotSession:(id)a3 timeInterval:(double)a4;
- (HMDCameraSnapshotSession)snapshotSession;
@end

@implementation HMDCameraSnapshotCompletionTimer

- (HMDCameraSnapshotSession)snapshotSession
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotSession);

  return WeakRetained;
}

- (HMDCameraSnapshotCompletionTimer)initWithSnapshotSession:(id)a3 timeInterval:(double)a4
{
  v6 = a3;
  v10.receiver = self;
  v10.super_class = HMDCameraSnapshotCompletionTimer;
  v7 = [(HMFTimer *)&v10 initWithTimeInterval:0 options:a4];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_snapshotSession, v6);
  }

  return v8;
}

@end