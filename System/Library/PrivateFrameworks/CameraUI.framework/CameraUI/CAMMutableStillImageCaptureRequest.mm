@interface CAMMutableStillImageCaptureRequest
- (NSString)description;
- (id)copyWithZone:(_NSZone *)zone;
- (id)mutableCopyWithZone:(_NSZone *)zone;
- (void)setAdjustmentFilters:(id)filters;
- (void)setAnalyticsEvent:(id)event;
- (void)setAspectRatio:(int64_t)ratio;
- (void)setAspectRatioCrop:(int64_t)crop;
- (void)setBurstIdentifier:(id)identifier;
- (void)setCaptureDevice:(int64_t)device;
- (void)setCaptureMode:(int64_t)mode;
- (void)setCaptureOrientation:(int64_t)orientation;
- (void)setCapturedFromPhotoBooth:(BOOL)booth;
- (void)setContactIDsInProximity:(id)proximity;
- (void)setCtmCaptureType:(int64_t)type;
- (void)setDeferredPersistenceOptions:(unint64_t)options;
- (void)setDelegate:(id)delegate;
- (void)setDesiredPreviewSize:(CGSize)size;
- (void)setDisablesCameraSwitchingDuringRecording:(BOOL)recording;
- (void)setEV0IrisIdentifier:(id)identifier;
- (void)setEV0LocalVideoDestinationURL:(id)l;
- (void)setEV0PersistenceUUID:(id)d;
- (void)setEV0VideoPersistenceUUID:(id)d;
- (void)setEffectFilterType:(int64_t)type;
- (void)setFlashMode:(int64_t)mode;
- (void)setFrontRearSimultaneousCaptureEnabled:(BOOL)enabled;
- (void)setFrontRearSimultaneousCaptureMirrored:(BOOL)mirrored;
- (void)setHdrMode:(int64_t)mode;
- (void)setHeading:(id)heading;
- (void)setIrisIdentifier:(id)identifier;
- (void)setIrisMode:(int64_t)mode;
- (void)setLightingEffectType:(int64_t)type;
- (void)setLocalCTMVideoDestinationURL:(id)l;
- (void)setLocalDestinationURL:(id)l;
- (void)setLocalVideoDestinationURL:(id)l;
- (void)setLocation:(id)location;
- (void)setMaximumBurstLength:(unint64_t)length;
- (void)setMaximumPhotoResolution:(int64_t)resolution;
- (void)setNightMode:(int64_t)mode;
- (void)setOrigin:(int64_t)origin;
- (void)setOriginalFilters:(id)filters;
- (void)setPersistenceOptions:(int64_t)options;
- (void)setPersistenceUUID:(id)d;
- (void)setPhotoEncodingBehavior:(int64_t)behavior;
- (void)setPhotoQualityPrioritization:(int64_t)prioritization;
- (void)setPressType:(int64_t)type;
- (void)setRawFileFormatBehavior:(int64_t)behavior;
- (void)setSemanticStyle:(id)style;
- (void)setSessionIdentifier:(unsigned __int16)identifier;
- (void)setSharedLibraryDiagnostics:(id)diagnostics;
- (void)setSharedLibraryMode:(int64_t)mode;
- (void)setShouldDelayRemotePersistence:(BOOL)persistence;
- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)metadata;
- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)sidecar;
- (void)setStereoCaptureStatus:(int64_t)status;
- (void)setStillDuringVideo:(BOOL)video;
- (void)setTemporaryPersistenceOptions:(int64_t)options;
- (void)setTextAnalysisIdentifier:(id)identifier;
- (void)setTextAnalysisRegion:(id)region;
- (void)setTimelapseIdentifier:(id)identifier;
- (void)setTorchMode:(int64_t)mode;
- (void)setVideoEncodingBehavior:(int64_t)behavior;
- (void)setVideoPersistenceUUID:(id)d;
- (void)setWantsAudioForCapture:(BOOL)capture;
- (void)setWantsAutoDualCameraFusion:(BOOL)fusion;
- (void)setWantsDepthData:(BOOL)data;
- (void)setWantsEV0ForHDR:(BOOL)r;
- (void)setWantsHighResolutionStills:(BOOL)stills;
- (void)setWantsSemanticSceneFilter:(BOOL)filter;
- (void)setWantsShutterSoundSuppression:(BOOL)suppression;
- (void)setWantsSquareCrop:(BOOL)crop;
@end

@implementation CAMMutableStillImageCaptureRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  burstIdentifier = [(CAMStillImageCaptureRequest *)self burstIdentifier];
  irisIdentifier = [(CAMStillImageCaptureRequest *)self irisIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ burstIdentifier:%@ irisIdentifier%@>", v4, burstIdentifier, irisIdentifier];

  return v7;
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [CAMStillImageCaptureRequest alloc];

  return [(CAMStillImageCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)mutableCopyWithZone:(_NSZone *)zone
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithRequest:self distinctPersistence:0];
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

- (void)setPressType:(int64_t)type
{
  if (self->super.super._pressType != type)
  {
    self->super.super._pressType = type;
  }
}

- (void)setFlashMode:(int64_t)mode
{
  if (self->super._flashMode != mode)
  {
    self->super._flashMode = mode;
  }
}

- (void)setHdrMode:(int64_t)mode
{
  if (self->super._hdrMode != mode)
  {
    self->super._hdrMode = mode;
  }
}

- (void)setIrisMode:(int64_t)mode
{
  if (!mode)
  {
    irisIdentifier = self->super._irisIdentifier;
    self->super._irisIdentifier = 0;

    videoPersistenceUUID = self->super._videoPersistenceUUID;
    self->super._videoPersistenceUUID = 0;

    EV0IrisIdentifier = self->super._EV0IrisIdentifier;
    self->super._EV0IrisIdentifier = 0;

    EV0VideoPersistenceUUID = self->super._EV0VideoPersistenceUUID;
    self->super._EV0VideoPersistenceUUID = 0;
  }

  if (self->super._irisMode != mode)
  {
    self->super._irisMode = mode;
  }
}

- (void)setCtmCaptureType:(int64_t)type
{
  if (self->super._ctmCaptureType != type)
  {
    self->super._ctmCaptureType = type;
  }
}

- (void)setNightMode:(int64_t)mode
{
  if (self->super._nightMode != mode)
  {
    self->super._nightMode = mode;
  }
}

- (void)setWantsDepthData:(BOOL)data
{
  if (self->super._wantsDepthData != data)
  {
    self->super._wantsDepthData = data;
  }
}

- (void)setAdjustmentFilters:(id)filters
{
  filtersCopy = filters;
  adjustmentFilters = self->super._adjustmentFilters;
  if (adjustmentFilters != filtersCopy)
  {
    v8 = filtersCopy;
    adjustmentFilters = [(NSArray *)adjustmentFilters isEqualToArray:filtersCopy];
    filtersCopy = v8;
    if ((adjustmentFilters & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._adjustmentFilters;
      self->super._adjustmentFilters = v6;

      filtersCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](adjustmentFilters, filtersCopy);
}

- (void)setOriginalFilters:(id)filters
{
  filtersCopy = filters;
  originalFilters = self->super._originalFilters;
  if (originalFilters != filtersCopy)
  {
    v8 = filtersCopy;
    originalFilters = [(NSArray *)originalFilters isEqualToArray:filtersCopy];
    filtersCopy = v8;
    if ((originalFilters & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._originalFilters;
      self->super._originalFilters = v6;

      filtersCopy = v8;
    }
  }

  MEMORY[0x1EEE66BB8](originalFilters, filtersCopy);
}

- (void)setPhotoQualityPrioritization:(int64_t)prioritization
{
  if (self->super._photoQualityPrioritization != prioritization)
  {
    self->super._photoQualityPrioritization = prioritization;
  }
}

- (void)setWantsAutoDualCameraFusion:(BOOL)fusion
{
  if (self->super._wantsAutoDualCameraFusion != fusion)
  {
    self->super._wantsAutoDualCameraFusion = fusion;
  }
}

- (void)setWantsSemanticSceneFilter:(BOOL)filter
{
  if (self->super._wantsSemanticSceneFilter != filter)
  {
    self->super._wantsSemanticSceneFilter = filter;
  }
}

- (void)setSemanticStyle:(id)style
{
  styleCopy = style;
  if (([(CEKCaptureStyle *)self->super._semanticStyle isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super._semanticStyle, style);
  }
}

- (void)setWantsAudioForCapture:(BOOL)capture
{
  if (self->super._wantsAudioForCapture != capture)
  {
    self->super._wantsAudioForCapture = capture;
  }
}

- (void)setWantsShutterSoundSuppression:(BOOL)suppression
{
  if (self->super._wantsShutterSoundSuppression != suppression)
  {
    self->super._wantsShutterSoundSuppression = suppression;
  }
}

- (void)setWantsSquareCrop:(BOOL)crop
{
  if (self->super._wantsSquareCrop != crop)
  {
    self->super._wantsSquareCrop = crop;
  }
}

- (void)setAspectRatio:(int64_t)ratio
{
  if (self->super._aspectRatio != ratio)
  {
    self->super._aspectRatio = ratio;
  }
}

- (void)setWantsHighResolutionStills:(BOOL)stills
{
  if (self->super._wantsHighResolutionStills != stills)
  {
    self->super._wantsHighResolutionStills = stills;
  }
}

- (void)setStillDuringVideo:(BOOL)video
{
  if (self->super._stillDuringVideo != video)
  {
    self->super._stillDuringVideo = video;
  }
}

- (void)setTextAnalysisIdentifier:(id)identifier
{
  identifierCopy = identifier;
  v5 = identifierCopy;
  if (self->super._textAnalysisIdentifier != identifierCopy)
  {
    v8 = identifierCopy;
    identifierCopy = [identifierCopy isEqualToString:?];
    v5 = v8;
    if ((identifierCopy & 1) == 0)
    {
      v6 = [v8 copy];
      textAnalysisIdentifier = self->super._textAnalysisIdentifier;
      self->super._textAnalysisIdentifier = v6;

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](identifierCopy, v5);
}

- (void)setTextAnalysisRegion:(id)region
{
  regionCopy = region;
  if (self->super._textAnalysisRegion != regionCopy)
  {
    v6 = regionCopy;
    objc_storeStrong(&self->super._textAnalysisRegion, region);
    regionCopy = v6;
  }
}

- (void)setDesiredPreviewSize:(CGSize)size
{
  if (self->super._desiredPreviewSize.width != size.width || self->super._desiredPreviewSize.height != size.height)
  {
    self->super._desiredPreviewSize = size;
  }
}

- (void)setIrisIdentifier:(id)identifier
{
  if (self->super._irisIdentifier != identifier)
  {
    v4 = [identifier copy];
    irisIdentifier = self->super._irisIdentifier;
    self->super._irisIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, irisIdentifier);
  }
}

- (void)setDisablesCameraSwitchingDuringRecording:(BOOL)recording
{
  if (self->super._disablesCameraSwitchingDuringRecording != recording)
  {
    self->super._disablesCameraSwitchingDuringRecording = recording;
  }
}

- (void)setTorchMode:(int64_t)mode
{
  if (self->super._torchMode != mode)
  {
    self->super._torchMode = mode;
  }
}

- (void)setLocalCTMVideoDestinationURL:(id)l
{
  if (self->super._localCTMVideoDestinationURL != l)
  {
    v4 = [l copy];
    localCTMVideoDestinationURL = self->super._localCTMVideoDestinationURL;
    self->super._localCTMVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, localCTMVideoDestinationURL);
  }
}

- (void)setLocalVideoDestinationURL:(id)l
{
  if (self->super._localVideoDestinationURL != l)
  {
    v4 = [l copy];
    localVideoDestinationURL = self->super._localVideoDestinationURL;
    self->super._localVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, localVideoDestinationURL);
  }
}

- (void)setVideoPersistenceUUID:(id)d
{
  if (self->super._videoPersistenceUUID != d)
  {
    v4 = [d copy];
    videoPersistenceUUID = self->super._videoPersistenceUUID;
    self->super._videoPersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, videoPersistenceUUID);
  }
}

- (void)setWantsEV0ForHDR:(BOOL)r
{
  if (self->super._wantsEV0ForHDR != r)
  {
    self->super._wantsEV0ForHDR = r;
  }
}

- (void)setEV0IrisIdentifier:(id)identifier
{
  if (self->super._EV0IrisIdentifier != identifier)
  {
    v4 = [identifier copy];
    EV0IrisIdentifier = self->super._EV0IrisIdentifier;
    self->super._EV0IrisIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, EV0IrisIdentifier);
  }
}

- (void)setEV0LocalVideoDestinationURL:(id)l
{
  if (self->super._EV0LocalVideoDestinationURL != l)
  {
    v4 = [l copy];
    EV0LocalVideoDestinationURL = self->super._EV0LocalVideoDestinationURL;
    self->super._EV0LocalVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, EV0LocalVideoDestinationURL);
  }
}

- (void)setEV0VideoPersistenceUUID:(id)d
{
  if (self->super._EV0VideoPersistenceUUID != d)
  {
    v4 = [d copy];
    EV0VideoPersistenceUUID = self->super._EV0VideoPersistenceUUID;
    self->super._EV0VideoPersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, EV0VideoPersistenceUUID);
  }
}

- (void)setSessionIdentifier:(unsigned __int16)identifier
{
  if (self->super.super._sessionIdentifier != identifier)
  {
    self->super.super._sessionIdentifier = identifier;
  }
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

- (void)setStereoCaptureStatus:(int64_t)status
{
  if (self->super._stereoCaptureStatus != status)
  {
    self->super._stereoCaptureStatus = status;
  }
}

- (void)setFrontRearSimultaneousCaptureEnabled:(BOOL)enabled
{
  if (self->super._frontRearSimultaneousCaptureEnabled != enabled)
  {
    self->super._frontRearSimultaneousCaptureEnabled = enabled;
  }
}

- (void)setFrontRearSimultaneousCaptureMirrored:(BOOL)mirrored
{
  if (self->super._frontRearSimultaneousCaptureMirrored != mirrored)
  {
    self->super._frontRearSimultaneousCaptureMirrored = mirrored;
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

- (void)setEV0PersistenceUUID:(id)d
{
  if (self->super._EV0PersistenceUUID != d)
  {
    v4 = [d copy];
    EV0PersistenceUUID = self->super._EV0PersistenceUUID;
    self->super._EV0PersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, EV0PersistenceUUID);
  }
}

- (void)setPhotoEncodingBehavior:(int64_t)behavior
{
  if (self->super.super._photoEncodingBehavior != behavior)
  {
    self->super.super._photoEncodingBehavior = behavior;
  }
}

- (void)setVideoEncodingBehavior:(int64_t)behavior
{
  if (self->super.super._videoEncodingBehavior != behavior)
  {
    self->super.super._videoEncodingBehavior = behavior;
  }
}

- (void)setRawFileFormatBehavior:(int64_t)behavior
{
  if (self->super.super._rawFileFormatBehavior != behavior)
  {
    self->super.super._rawFileFormatBehavior = behavior;
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

- (void)setCapturedFromPhotoBooth:(BOOL)booth
{
  if (self->super.super._capturedFromPhotoBooth != booth)
  {
    self->super.super._capturedFromPhotoBooth = booth;
  }
}

- (void)setOrigin:(int64_t)origin
{
  if (self->super.super._origin != origin)
  {
    self->super.super._origin = origin;
  }
}

- (void)setBurstIdentifier:(id)identifier
{
  if (self->super._burstIdentifier != identifier)
  {
    v4 = [identifier copy];
    burstIdentifier = self->super._burstIdentifier;
    self->super._burstIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, burstIdentifier);
  }
}

- (void)setMaximumBurstLength:(unint64_t)length
{
  if (self->super._maximumBurstLength != length)
  {
    self->super._maximumBurstLength = length;
  }
}

- (void)setEffectFilterType:(int64_t)type
{
  if (self->super._effectFilterType != type)
  {
    self->super._effectFilterType = type;
  }
}

- (void)setLightingEffectType:(int64_t)type
{
  if (self->super._lightingEffectType != type)
  {
    self->super._lightingEffectType = type;
  }
}

- (void)setAspectRatioCrop:(int64_t)crop
{
  if (self->super._aspectRatioCrop != crop)
  {
    self->super._aspectRatioCrop = crop;
  }
}

- (void)setTimelapseIdentifier:(id)identifier
{
  if (self->super._timelapseIdentifier != identifier)
  {
    v4 = [identifier copy];
    timelapseIdentifier = self->super._timelapseIdentifier;
    self->super._timelapseIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, timelapseIdentifier);
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

- (void)setMaximumPhotoResolution:(int64_t)resolution
{
  if (self->super._maximumPhotoResolution != resolution)
  {
    self->super._maximumPhotoResolution = resolution;
  }
}

@end