@interface CAMMutableVideoCaptureRequest
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAnalyticsEvent:(id)a3;
- (void)setAudioConfiguration:(unint64_t)a3;
- (void)setCaptureDevice:(int64_t)a3;
- (void)setCaptureMode:(int64_t)a3;
- (void)setCaptureOrientation:(int64_t)a3;
- (void)setCaptureVideoConfiguration:(int64_t)a3;
- (void)setContactIDsInProximity:(id)a3;
- (void)setDeferredPersistenceOptions:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setFrontRearSimultaneousVideoEnabled:(BOOL)a3;
- (void)setFrontRearSimultaneousVideoMirrored:(BOOL)a3;
- (void)setHeading:(id)a3;
- (void)setLocalDestinationURL:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMaximumRecordedDuration:(double)a3;
- (void)setMaximumRecordedFileSize:(int64_t)a3;
- (void)setOrigin:(int64_t)a3;
- (void)setPersistenceOptions:(int64_t)a3;
- (void)setPersistenceUUID:(id)a3;
- (void)setPressType:(int64_t)a3;
- (void)setRemainingDiskUsageThreshold:(int64_t)a3;
- (void)setSessionIdentifier:(unsigned __int16)a3;
- (void)setSharedLibraryDiagnostics:(id)a3;
- (void)setSharedLibraryMode:(int64_t)a3;
- (void)setShouldDelayRemotePersistence:(BOOL)a3;
- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)a3;
- (void)setShouldGenerateVideoPreviewImage:(BOOL)a3;
- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)a3;
- (void)setTemporaryPersistenceOptions:(int64_t)a3;
- (void)setTimelapse:(BOOL)a3;
- (void)setTorchMode:(int64_t)a3;
- (void)setTrueVideoEnabled:(BOOL)a3;
- (void)setUserInitiationTimestamp:(double)a3;
- (void)setVideoEncodingBehavior:(int64_t)a3;
@end

@implementation CAMMutableVideoCaptureRequest

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMVideoCaptureRequest alloc];

  return [(CAMVideoCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithRequest:self distinctPersistence:0];
}

- (void)setDelegate:(id)a3
{
  obj = a3;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->super._delegate, obj);
    v5 = obj;
  }
}

- (void)setCaptureOrientation:(int64_t)a3
{
  if (self->super.super._captureOrientation != a3)
  {
    self->super.super._captureOrientation = a3;
  }
}

- (void)setAnalyticsEvent:(id)a3
{
  v7 = a3;
  v5 = [(CAMAnalyticsEvent *)self->super.super._analyticsEvent uuid];
  v6 = [v7 uuid];

  if (v5 != v6)
  {
    objc_storeStrong(&self->super.super._analyticsEvent, a3);
  }
}

- (void)setCaptureDevice:(int64_t)a3
{
  if (self->super.super._captureDevice != a3)
  {
    self->super.super._captureDevice = a3;
  }
}

- (void)setCaptureMode:(int64_t)a3
{
  if (self->super.super._captureMode != a3)
  {
    self->super.super._captureMode = a3;
  }
}

- (void)setCaptureVideoConfiguration:(int64_t)a3
{
  if (self->super._captureVideoConfiguration != a3)
  {
    self->super._captureVideoConfiguration = a3;
  }
}

- (void)setPressType:(int64_t)a3
{
  if (self->super.super._pressType != a3)
  {
    self->super.super._pressType = a3;
  }
}

- (void)setTorchMode:(int64_t)a3
{
  if (self->super._torchMode != a3)
  {
    self->super._torchMode = a3;
  }
}

- (void)setSessionIdentifier:(unsigned __int16)a3
{
  if (self->super.super._sessionIdentifier != a3)
  {
    self->super.super._sessionIdentifier = a3;
  }
}

- (void)setTrueVideoEnabled:(BOOL)a3
{
  if (self->super._trueVideoEnabled != a3)
  {
    self->super._trueVideoEnabled = a3;
  }
}

- (void)setFrontRearSimultaneousVideoEnabled:(BOOL)a3
{
  if (self->super._frontRearSimultaneousVideoEnabled != a3)
  {
    self->super._frontRearSimultaneousVideoEnabled = a3;
  }
}

- (void)setFrontRearSimultaneousVideoMirrored:(BOOL)a3
{
  if (self->super._frontRearSimultaneousVideoMirrored != a3)
  {
    self->super._frontRearSimultaneousVideoMirrored = a3;
  }
}

- (void)setPersistenceUUID:(id)a3
{
  if (self->super.super._persistenceUUID != a3)
  {
    v4 = [a3 copy];
    persistenceUUID = self->super.super._persistenceUUID;
    self->super.super._persistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, persistenceUUID);
  }
}

- (void)setPersistenceOptions:(int64_t)a3
{
  if (self->super.super._persistenceOptions != a3)
  {
    self->super.super._persistenceOptions = a3;
  }
}

- (void)setDeferredPersistenceOptions:(unint64_t)a3
{
  if (self->super.super._deferredPersistenceOptions != a3)
  {
    self->super.super._deferredPersistenceOptions = a3;
  }
}

- (void)setTemporaryPersistenceOptions:(int64_t)a3
{
  if (self->super.super._temporaryPersistenceOptions != a3)
  {
    self->super.super._temporaryPersistenceOptions = a3;
  }
}

- (void)setLocalDestinationURL:(id)a3
{
  v5 = a3;
  if (([(NSURL *)self->super.super._localDestinationURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super.super._localDestinationURL, a3);
  }
}

- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)a3
{
  if (self->super.super._shouldExtractDiagnosticsFromMetadata != a3)
  {
    self->super.super._shouldExtractDiagnosticsFromMetadata = a3;
  }
}

- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)a3
{
  if (self->super.super._shouldPersistDiagnosticsToSidecar != a3)
  {
    self->super.super._shouldPersistDiagnosticsToSidecar = a3;
  }
}

- (void)setShouldDelayRemotePersistence:(BOOL)a3
{
  if (self->super.super._shouldDelayRemotePersistence != a3)
  {
    self->super.super._shouldDelayRemotePersistence = a3;
  }
}

- (void)setVideoEncodingBehavior:(int64_t)a3
{
  if (self->super.super._videoEncodingBehavior != a3)
  {
    self->super.super._videoEncodingBehavior = a3;
  }
}

- (void)setLocation:(id)a3
{
  v5 = a3;
  if (self->super.super._location != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super.super._location, a3);
    v5 = v6;
  }
}

- (void)setHeading:(id)a3
{
  v5 = a3;
  if (self->super.super._heading != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super.super._heading, a3);
    v5 = v6;
  }
}

- (void)setMaximumRecordedDuration:(double)a3
{
  if (self->super._maximumRecordedDuration != a3)
  {
    self->super._maximumRecordedDuration = a3;
  }
}

- (void)setMaximumRecordedFileSize:(int64_t)a3
{
  if (self->super._maximumRecordedFileSize != a3)
  {
    self->super._maximumRecordedFileSize = a3;
  }
}

- (void)setRemainingDiskUsageThreshold:(int64_t)a3
{
  if (self->super._remainingDiskUsageThreshold != a3)
  {
    self->super._remainingDiskUsageThreshold = a3;
  }
}

- (void)setShouldGenerateVideoPreviewImage:(BOOL)a3
{
  if (self->super._shouldGenerateVideoPreviewImage != a3)
  {
    self->super._shouldGenerateVideoPreviewImage = a3;
  }
}

- (void)setOrigin:(int64_t)a3
{
  if (self->super.super._origin != a3)
  {
    self->super.super._origin = a3;
  }
}

- (void)setTimelapse:(BOOL)a3
{
  if (self->super._timelapse != a3)
  {
    self->super._timelapse = a3;
  }
}

- (void)setUserInitiationTimestamp:(double)a3
{
  if (self->super._userInitiationTimestamp != a3)
  {
    self->super._userInitiationTimestamp = a3;
  }
}

- (void)setContactIDsInProximity:(id)a3
{
  if (self->super.super._contactIDsInProximity != a3)
  {
    v4 = [a3 copy];
    contactIDsInProximity = self->super.super._contactIDsInProximity;
    self->super.super._contactIDsInProximity = v4;

    MEMORY[0x1EEE66BB8](v4, contactIDsInProximity);
  }
}

- (void)setSharedLibraryMode:(int64_t)a3
{
  if (self->super.super._sharedLibraryMode != a3)
  {
    self->super.super._sharedLibraryMode = a3;
  }
}

- (void)setSharedLibraryDiagnostics:(id)a3
{
  if (self->super.super._sharedLibraryDiagnostics != a3)
  {
    v4 = [a3 copy];
    sharedLibraryDiagnostics = self->super.super._sharedLibraryDiagnostics;
    self->super.super._sharedLibraryDiagnostics = v4;

    MEMORY[0x1EEE66BB8](v4, sharedLibraryDiagnostics);
  }
}

- (void)setAudioConfiguration:(unint64_t)a3
{
  if (self->super.super._audioConfiguration != a3)
  {
    self->super.super._audioConfiguration = a3;
  }
}

@end