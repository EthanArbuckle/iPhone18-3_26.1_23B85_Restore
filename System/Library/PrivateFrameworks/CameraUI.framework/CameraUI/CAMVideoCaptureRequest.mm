@interface CAMVideoCaptureRequest
- (CAMVideoCaptureRequest)init;
- (CAMVideoCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence;
- (CAMVideoCaptureRequestDelegate)delegate;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)zone;
@end

@implementation CAMVideoCaptureRequest

- (CAMVideoCaptureRequest)init
{
  v6.receiver = self;
  v6.super_class = CAMVideoCaptureRequest;
  v2 = [(CAMCaptureRequest *)&v6 initWithType:1];
  v3 = v2;
  if (v2)
  {
    v2->_shouldGenerateVideoPreviewImage = 1;
    v2->_remainingDiskUsageThreshold = 0;
    v2->_userInitiationTimestamp = 0.0;
    v4 = v2;
  }

  return v3;
}

- (CAMVideoCaptureRequest)initWithRequest:(id)request distinctPersistence:(BOOL)persistence
{
  persistenceCopy = persistence;
  requestCopy = request;
  v13.receiver = self;
  v13.super_class = CAMVideoCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v13 initWithRequest:requestCopy distinctPersistence:persistenceCopy];
  if (v7)
  {
    delegate = [requestCopy delegate];
    objc_storeWeak(&v7->_delegate, delegate);

    v7->_captureVideoConfiguration = [requestCopy captureVideoConfiguration];
    v7->_torchMode = [requestCopy torchMode];
    v7->_wantsWhiteBalanceLocked = [requestCopy wantsWhiteBalanceLocked];
    [requestCopy maximumRecordedDuration];
    v7->_maximumRecordedDuration = v9;
    v7->_maximumRecordedFileSize = [requestCopy maximumRecordedFileSize];
    v7->_remainingDiskUsageThreshold = [requestCopy remainingDiskUsageThreshold];
    v7->_shouldGenerateVideoPreviewImage = [requestCopy shouldGenerateVideoPreviewImage];
    v7->_timelapse = [requestCopy isTimelapse];
    [requestCopy userInitiationTimestamp];
    v7->_userInitiationTimestamp = v10;
    v7->_trueVideoEnabled = [requestCopy trueVideoEnabled];
    v7->_frontRearSimultaneousVideoEnabled = [requestCopy isFrontRearSimultaneousVideoEnabled];
    v7->_frontRearSimultaneousVideoMirrored = [requestCopy isFrontRearSimultaneousVideoMirrored];
    v11 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = [CAMMutableVideoCaptureRequest alloc];

  return [(CAMVideoCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  sessionIdentifier = [(CAMCaptureRequest *)self sessionIdentifier];
  localDestinationURL = [(CAMCaptureRequest *)self localDestinationURL];
  v7 = [v3 stringWithFormat:@"<%@: sessionIdentifier:%d, localDestinationURL:%@>", v4, sessionIdentifier, localDestinationURL];

  return v7;
}

- (CAMVideoCaptureRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end