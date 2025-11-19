@interface _HMDCameraRemoteStreamTrackerAssertion
- (HMDCameraRemoteStreamTracker)streamTracker;
- (_HMDCameraRemoteStreamTrackerAssertion)initWithStreamTracker:(id)a3 streamIdentifier:(id)a4;
- (void)dealloc;
@end

@implementation _HMDCameraRemoteStreamTrackerAssertion

- (HMDCameraRemoteStreamTracker)streamTracker
{
  WeakRetained = objc_loadWeakRetained(&self->_streamTracker);

  return WeakRetained;
}

- (void)dealloc
{
  WeakRetained = objc_loadWeakRetained(&self->_streamTracker);
  [WeakRetained stopTrackingStreamWithSessionID:self->_streamSessionID];

  v4.receiver = self;
  v4.super_class = _HMDCameraRemoteStreamTrackerAssertion;
  [(_HMDCameraRemoteStreamTrackerAssertion *)&v4 dealloc];
}

- (_HMDCameraRemoteStreamTrackerAssertion)initWithStreamTracker:(id)a3 streamIdentifier:(id)a4
{
  v6 = a3;
  v7 = a4;
  v11.receiver = self;
  v11.super_class = _HMDCameraRemoteStreamTrackerAssertion;
  v8 = [(_HMDCameraRemoteStreamTrackerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_streamTracker, v6);
    objc_storeStrong(&v9->_streamSessionID, a4);
  }

  return v9;
}

@end