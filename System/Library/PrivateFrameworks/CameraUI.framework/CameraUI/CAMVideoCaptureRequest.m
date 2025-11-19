@interface CAMVideoCaptureRequest
- (CAMVideoCaptureRequest)init;
- (CAMVideoCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4;
- (CAMVideoCaptureRequestDelegate)delegate;
- (id)description;
- (id)mutableCopyWithZone:(_NSZone *)a3;
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

- (CAMVideoCaptureRequest)initWithRequest:(id)a3 distinctPersistence:(BOOL)a4
{
  v4 = a4;
  v6 = a3;
  v13.receiver = self;
  v13.super_class = CAMVideoCaptureRequest;
  v7 = [(CAMCaptureRequest *)&v13 initWithRequest:v6 distinctPersistence:v4];
  if (v7)
  {
    v8 = [v6 delegate];
    objc_storeWeak(&v7->_delegate, v8);

    v7->_captureVideoConfiguration = [v6 captureVideoConfiguration];
    v7->_torchMode = [v6 torchMode];
    v7->_wantsWhiteBalanceLocked = [v6 wantsWhiteBalanceLocked];
    [v6 maximumRecordedDuration];
    v7->_maximumRecordedDuration = v9;
    v7->_maximumRecordedFileSize = [v6 maximumRecordedFileSize];
    v7->_remainingDiskUsageThreshold = [v6 remainingDiskUsageThreshold];
    v7->_shouldGenerateVideoPreviewImage = [v6 shouldGenerateVideoPreviewImage];
    v7->_timelapse = [v6 isTimelapse];
    [v6 userInitiationTimestamp];
    v7->_userInitiationTimestamp = v10;
    v7->_trueVideoEnabled = [v6 trueVideoEnabled];
    v7->_frontRearSimultaneousVideoEnabled = [v6 isFrontRearSimultaneousVideoEnabled];
    v7->_frontRearSimultaneousVideoMirrored = [v6 isFrontRearSimultaneousVideoMirrored];
    v11 = v7;
  }

  return v7;
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = [CAMMutableVideoCaptureRequest alloc];

  return [(CAMVideoCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMCaptureRequest *)self sessionIdentifier];
  v6 = [(CAMCaptureRequest *)self localDestinationURL];
  v7 = [v3 stringWithFormat:@"<%@: sessionIdentifier:%d, localDestinationURL:%@>", v4, v5, v6];

  return v7;
}

- (CAMVideoCaptureRequestDelegate)delegate
{
  WeakRetained = objc_loadWeakRetained(&self->_delegate);

  return WeakRetained;
}

@end