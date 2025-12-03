@interface _HMDCameraRemoteStreamTrackerAssertion
- (HMDCameraRemoteStreamTracker)streamTracker;
- (_HMDCameraRemoteStreamTrackerAssertion)initWithStreamTracker:(id)tracker streamIdentifier:(id)identifier;
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

- (_HMDCameraRemoteStreamTrackerAssertion)initWithStreamTracker:(id)tracker streamIdentifier:(id)identifier
{
  trackerCopy = tracker;
  identifierCopy = identifier;
  v11.receiver = self;
  v11.super_class = _HMDCameraRemoteStreamTrackerAssertion;
  v8 = [(_HMDCameraRemoteStreamTrackerAssertion *)&v11 init];
  v9 = v8;
  if (v8)
  {
    objc_storeWeak(&v8->_streamTracker, trackerCopy);
    objc_storeStrong(&v9->_streamSessionID, identifier);
  }

  return v9;
}

@end