@interface HMDCameraSnapshotCompletionTimer
- (HMDCameraSnapshotCompletionTimer)initWithSnapshotSession:(id)session timeInterval:(double)interval;
- (HMDCameraSnapshotSession)snapshotSession;
@end

@implementation HMDCameraSnapshotCompletionTimer

- (HMDCameraSnapshotSession)snapshotSession
{
  WeakRetained = objc_loadWeakRetained(&self->_snapshotSession);

  return WeakRetained;
}

- (HMDCameraSnapshotCompletionTimer)initWithSnapshotSession:(id)session timeInterval:(double)interval
{
  sessionCopy = session;
  v10.receiver = self;
  v10.super_class = HMDCameraSnapshotCompletionTimer;
  v7 = [(HMFTimer *)&v10 initWithTimeInterval:0 options:interval];
  v8 = v7;
  if (v7)
  {
    objc_storeWeak(&v7->_snapshotSession, sessionCopy);
  }

  return v8;
}

@end