@interface CAMMutableVideoCaptureRequest
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAnalyticsEvent:(id)event;
- (void)setAudioConfiguration:(unint64_t)configuration;
- (void)setCaptureDevice:(int64_t)device;
- (void)setCaptureMode:(int64_t)mode;
- (void)setCaptureOrientation:(int64_t)orientation;
- (void)setCaptureVideoConfiguration:(int64_t)configuration;
- (void)setContactIDsInProximity:(id)proximity;
- (void)setDeferredPersistenceOptions:(unint64_t)options;
- (void)setDelegate:(id)delegate;
- (void)setFrontRearSimultaneousVideoEnabled:(BOOL)enabled;
- (void)setFrontRearSimultaneousVideoMirrored:(BOOL)mirrored;
- (void)setHeading:(id)heading;
- (void)setLocalDestinationURL:(id)l;
- (void)setLocation:(id)location;
- (void)setMaximumRecordedDuration:(double)duration;
- (void)setMaximumRecordedFileSize:(int64_t)size;
- (void)setOrigin:(int64_t)origin;
- (void)setPersistenceOptions:(int64_t)options;
- (void)setPersistenceUUID:(id)d;
- (void)setPressType:(int64_t)type;
- (void)setRemainingDiskUsageThreshold:(int64_t)threshold;
- (void)setSessionIdentifier:(unsigned __int16)identifier;
- (void)setSharedLibraryDiagnostics:(id)diagnostics;
- (void)setSharedLibraryMode:(int64_t)mode;
- (void)setShouldDelayRemotePersistence:(BOOL)persistence;
- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)metadata;
- (void)setShouldGenerateVideoPreviewImage:(BOOL)image;
- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)sidecar;
- (void)setTemporaryPersistenceOptions:(int64_t)options;
- (void)setTimelapse:(BOOL)timelapse;
- (void)setTorchMode:(int64_t)mode;
- (void)setTrueVideoEnabled:(BOOL)enabled;
- (void)setUserInitiationTimestamp:(double)timestamp;
- (void)setVideoEncodingBehavior:(int64_t)behavior;
@end

@implementation CAMMutableVideoCaptureRequest

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAMVideoCaptureRequest alloc];

  return [(CAMVideoCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithRequest:self distinctPersistence:0];
}

- (void)setDelegate:(id)delegate
{
  obj = delegate;
  WeakRetained = objc_loadWeakRetained(&self->super._delegate);

  v5 = obj;
  if (WeakRetained != obj)
  {
    objc_storeWeak(&self->super._delegate, obj);
    v5 = obj;
  }
}

- (void)setCaptureOrientation:(int64_t)orientation
{
  if (self->super.super._captureOrientation != orientation)
  {
    self->super.super._captureOrientation = orientation;
  }
}

- (void)setAnalyticsEvent:(id)event
{
  eventCopy = event;
  uuid = [(CAMAnalyticsEvent *)self->super.super._analyticsEvent uuid];
  uuid2 = [eventCopy uuid];

  if (uuid != uuid2)
  {
    objc_storeStrong(&self->super.super._analyticsEvent, event);
  }
}

- (void)setCaptureDevice:(int64_t)device
{
  if (self->super.super._captureDevice != device)
  {
    self->super.super._captureDevice = device;
  }
}

- (void)setCaptureMode:(int64_t)mode
{
  if (self->super.super._captureMode != mode)
  {
    self->super.super._captureMode = mode;
  }
}

- (void)setCaptureVideoConfiguration:(int64_t)configuration
{
  if (self->super._captureVideoConfiguration != configuration)
  {
    self->super._captureVideoConfiguration = configuration;
  }
}

- (void)setPressType:(int64_t)type
{
  if (self->super.super._pressType != type)
  {
    self->super.super._pressType = type;
  }
}

- (void)setTorchMode:(int64_t)mode
{
  if (self->super._torchMode != mode)
  {
    self->super._torchMode = mode;
  }
}

- (void)setSessionIdentifier:(unsigned __int16)identifier
{
  if (self->super.super._sessionIdentifier != identifier)
  {
    self->super.super._sessionIdentifier = identifier;
  }
}

- (void)setTrueVideoEnabled:(BOOL)enabled
{
  if (self->super._trueVideoEnabled != enabled)
  {
    self->super._trueVideoEnabled = enabled;
  }
}

- (void)setFrontRearSimultaneousVideoEnabled:(BOOL)enabled
{
  if (self->super._frontRearSimultaneousVideoEnabled != enabled)
  {
    self->super._frontRearSimultaneousVideoEnabled = enabled;
  }
}

- (void)setFrontRearSimultaneousVideoMirrored:(BOOL)mirrored
{
  if (self->super._frontRearSimultaneousVideoMirrored != mirrored)
  {
    self->super._frontRearSimultaneousVideoMirrored = mirrored;
  }
}

- (void)setPersistenceUUID:(id)d
{
  if (self->super.super._persistenceUUID != d)
  {
    v4 = [d copy];
    persistenceUUID = self->super.super._persistenceUUID;
    self->super.super._persistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, persistenceUUID);
  }
}

- (void)setPersistenceOptions:(int64_t)options
{
  if (self->super.super._persistenceOptions != options)
  {
    self->super.super._persistenceOptions = options;
  }
}

- (void)setDeferredPersistenceOptions:(unint64_t)options
{
  if (self->super.super._deferredPersistenceOptions != options)
  {
    self->super.super._deferredPersistenceOptions = options;
  }
}

- (void)setTemporaryPersistenceOptions:(int64_t)options
{
  if (self->super.super._temporaryPersistenceOptions != options)
  {
    self->super.super._temporaryPersistenceOptions = options;
  }
}

- (void)setLocalDestinationURL:(id)l
{
  lCopy = l;
  if (([(NSURL *)self->super.super._localDestinationURL isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super.super._localDestinationURL, l);
  }
}

- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)metadata
{
  if (self->super.super._shouldExtractDiagnosticsFromMetadata != metadata)
  {
    self->super.super._shouldExtractDiagnosticsFromMetadata = metadata;
  }
}

- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)sidecar
{
  if (self->super.super._shouldPersistDiagnosticsToSidecar != sidecar)
  {
    self->super.super._shouldPersistDiagnosticsToSidecar = sidecar;
  }
}

- (void)setShouldDelayRemotePersistence:(BOOL)persistence
{
  if (self->super.super._shouldDelayRemotePersistence != persistence)
  {
    self->super.super._shouldDelayRemotePersistence = persistence;
  }
}

- (void)setVideoEncodingBehavior:(int64_t)behavior
{
  if (self->super.super._videoEncodingBehavior != behavior)
  {
    self->super.super._videoEncodingBehavior = behavior;
  }
}

- (void)setLocation:(id)location
{
  locationCopy = location;
  if (self->super.super._location != locationCopy)
  {
    v6 = locationCopy;
    objc_storeStrong(&self->super.super._location, location);
    locationCopy = v6;
  }
}

- (void)setHeading:(id)heading
{
  headingCopy = heading;
  if (self->super.super._heading != headingCopy)
  {
    v6 = headingCopy;
    objc_storeStrong(&self->super.super._heading, heading);
    headingCopy = v6;
  }
}

- (void)setMaximumRecordedDuration:(double)duration
{
  if (self->super._maximumRecordedDuration != duration)
  {
    self->super._maximumRecordedDuration = duration;
  }
}

- (void)setMaximumRecordedFileSize:(int64_t)size
{
  if (self->super._maximumRecordedFileSize != size)
  {
    self->super._maximumRecordedFileSize = size;
  }
}

- (void)setRemainingDiskUsageThreshold:(int64_t)threshold
{
  if (self->super._remainingDiskUsageThreshold != threshold)
  {
    self->super._remainingDiskUsageThreshold = threshold;
  }
}

- (void)setShouldGenerateVideoPreviewImage:(BOOL)image
{
  if (self->super._shouldGenerateVideoPreviewImage != image)
  {
    self->super._shouldGenerateVideoPreviewImage = image;
  }
}

- (void)setOrigin:(int64_t)origin
{
  if (self->super.super._origin != origin)
  {
    self->super.super._origin = origin;
  }
}

- (void)setTimelapse:(BOOL)timelapse
{
  if (self->super._timelapse != timelapse)
  {
    self->super._timelapse = timelapse;
  }
}

- (void)setUserInitiationTimestamp:(double)timestamp
{
  if (self->super._userInitiationTimestamp != timestamp)
  {
    self->super._userInitiationTimestamp = timestamp;
  }
}

- (void)setContactIDsInProximity:(id)proximity
{
  if (self->super.super._contactIDsInProximity != proximity)
  {
    v4 = [proximity copy];
    contactIDsInProximity = self->super.super._contactIDsInProximity;
    self->super.super._contactIDsInProximity = v4;

    MEMORY[0x1EEE66BB8](v4, contactIDsInProximity);
  }
}

- (void)setSharedLibraryMode:(int64_t)mode
{
  if (self->super.super._sharedLibraryMode != mode)
  {
    self->super.super._sharedLibraryMode = mode;
  }
}

- (void)setSharedLibraryDiagnostics:(id)diagnostics
{
  if (self->super.super._sharedLibraryDiagnostics != diagnostics)
  {
    v4 = [diagnostics copy];
    sharedLibraryDiagnostics = self->super.super._sharedLibraryDiagnostics;
    self->super.super._sharedLibraryDiagnostics = v4;

    MEMORY[0x1EEE66BB8](v4, sharedLibraryDiagnostics);
  }
}

- (void)setAudioConfiguration:(unint64_t)configuration
{
  if (self->super.super._audioConfiguration != configuration)
  {
    self->super.super._audioConfiguration = configuration;
  }
}

@end