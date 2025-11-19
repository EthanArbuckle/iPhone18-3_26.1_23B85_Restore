@interface CAMMutableStillImageCaptureRequest
- (NSString)description;
- (id)copyWithZone:(_NSZone *)a3;
- (id)mutableCopyWithZone:(_NSZone *)a3;
- (void)setAdjustmentFilters:(id)a3;
- (void)setAnalyticsEvent:(id)a3;
- (void)setAspectRatio:(int64_t)a3;
- (void)setAspectRatioCrop:(int64_t)a3;
- (void)setBurstIdentifier:(id)a3;
- (void)setCaptureDevice:(int64_t)a3;
- (void)setCaptureMode:(int64_t)a3;
- (void)setCaptureOrientation:(int64_t)a3;
- (void)setCapturedFromPhotoBooth:(BOOL)a3;
- (void)setContactIDsInProximity:(id)a3;
- (void)setCtmCaptureType:(int64_t)a3;
- (void)setDeferredPersistenceOptions:(unint64_t)a3;
- (void)setDelegate:(id)a3;
- (void)setDesiredPreviewSize:(CGSize)a3;
- (void)setDisablesCameraSwitchingDuringRecording:(BOOL)a3;
- (void)setEV0IrisIdentifier:(id)a3;
- (void)setEV0LocalVideoDestinationURL:(id)a3;
- (void)setEV0PersistenceUUID:(id)a3;
- (void)setEV0VideoPersistenceUUID:(id)a3;
- (void)setEffectFilterType:(int64_t)a3;
- (void)setFlashMode:(int64_t)a3;
- (void)setFrontRearSimultaneousCaptureEnabled:(BOOL)a3;
- (void)setFrontRearSimultaneousCaptureMirrored:(BOOL)a3;
- (void)setHdrMode:(int64_t)a3;
- (void)setHeading:(id)a3;
- (void)setIrisIdentifier:(id)a3;
- (void)setIrisMode:(int64_t)a3;
- (void)setLightingEffectType:(int64_t)a3;
- (void)setLocalCTMVideoDestinationURL:(id)a3;
- (void)setLocalDestinationURL:(id)a3;
- (void)setLocalVideoDestinationURL:(id)a3;
- (void)setLocation:(id)a3;
- (void)setMaximumBurstLength:(unint64_t)a3;
- (void)setMaximumPhotoResolution:(int64_t)a3;
- (void)setNightMode:(int64_t)a3;
- (void)setOrigin:(int64_t)a3;
- (void)setOriginalFilters:(id)a3;
- (void)setPersistenceOptions:(int64_t)a3;
- (void)setPersistenceUUID:(id)a3;
- (void)setPhotoEncodingBehavior:(int64_t)a3;
- (void)setPhotoQualityPrioritization:(int64_t)a3;
- (void)setPressType:(int64_t)a3;
- (void)setRawFileFormatBehavior:(int64_t)a3;
- (void)setSemanticStyle:(id)a3;
- (void)setSessionIdentifier:(unsigned __int16)a3;
- (void)setSharedLibraryDiagnostics:(id)a3;
- (void)setSharedLibraryMode:(int64_t)a3;
- (void)setShouldDelayRemotePersistence:(BOOL)a3;
- (void)setShouldExtractDiagnosticsFromMetadata:(BOOL)a3;
- (void)setShouldPersistDiagnosticsToSidecar:(BOOL)a3;
- (void)setStereoCaptureStatus:(int64_t)a3;
- (void)setStillDuringVideo:(BOOL)a3;
- (void)setTemporaryPersistenceOptions:(int64_t)a3;
- (void)setTextAnalysisIdentifier:(id)a3;
- (void)setTextAnalysisRegion:(id)a3;
- (void)setTimelapseIdentifier:(id)a3;
- (void)setTorchMode:(int64_t)a3;
- (void)setVideoEncodingBehavior:(int64_t)a3;
- (void)setVideoPersistenceUUID:(id)a3;
- (void)setWantsAudioForCapture:(BOOL)a3;
- (void)setWantsAutoDualCameraFusion:(BOOL)a3;
- (void)setWantsDepthData:(BOOL)a3;
- (void)setWantsEV0ForHDR:(BOOL)a3;
- (void)setWantsHighResolutionStills:(BOOL)a3;
- (void)setWantsSemanticSceneFilter:(BOOL)a3;
- (void)setWantsShutterSoundSuppression:(BOOL)a3;
- (void)setWantsSquareCrop:(BOOL)a3;
@end

@implementation CAMMutableStillImageCaptureRequest

- (NSString)description
{
  v3 = MEMORY[0x1E696AEC0];
  v4 = objc_opt_class();
  v5 = [(CAMStillImageCaptureRequest *)self burstIdentifier];
  v6 = [(CAMStillImageCaptureRequest *)self irisIdentifier];
  v7 = [v3 stringWithFormat:@"<%@ burstIdentifier:%@ irisIdentifier%@>", v4, v5, v6];

  return v7;
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [CAMStillImageCaptureRequest alloc];

  return [(CAMStillImageCaptureRequest *)v4 initWithRequest:self distinctPersistence:0];
}

- (id)mutableCopyWithZone:(_NSZone *)a3
{
  v4 = objc_alloc(objc_opt_class());

  return [v4 initWithRequest:self distinctPersistence:0];
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

- (void)setPressType:(int64_t)a3
{
  if (self->super.super._pressType != a3)
  {
    self->super.super._pressType = a3;
  }
}

- (void)setFlashMode:(int64_t)a3
{
  if (self->super._flashMode != a3)
  {
    self->super._flashMode = a3;
  }
}

- (void)setHdrMode:(int64_t)a3
{
  if (self->super._hdrMode != a3)
  {
    self->super._hdrMode = a3;
  }
}

- (void)setIrisMode:(int64_t)a3
{
  if (!a3)
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

  if (self->super._irisMode != a3)
  {
    self->super._irisMode = a3;
  }
}

- (void)setCtmCaptureType:(int64_t)a3
{
  if (self->super._ctmCaptureType != a3)
  {
    self->super._ctmCaptureType = a3;
  }
}

- (void)setNightMode:(int64_t)a3
{
  if (self->super._nightMode != a3)
  {
    self->super._nightMode = a3;
  }
}

- (void)setWantsDepthData:(BOOL)a3
{
  if (self->super._wantsDepthData != a3)
  {
    self->super._wantsDepthData = a3;
  }
}

- (void)setAdjustmentFilters:(id)a3
{
  v4 = a3;
  adjustmentFilters = self->super._adjustmentFilters;
  if (adjustmentFilters != v4)
  {
    v8 = v4;
    adjustmentFilters = [(NSArray *)adjustmentFilters isEqualToArray:v4];
    v4 = v8;
    if ((adjustmentFilters & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._adjustmentFilters;
      self->super._adjustmentFilters = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](adjustmentFilters, v4);
}

- (void)setOriginalFilters:(id)a3
{
  v4 = a3;
  originalFilters = self->super._originalFilters;
  if (originalFilters != v4)
  {
    v8 = v4;
    originalFilters = [(NSArray *)originalFilters isEqualToArray:v4];
    v4 = v8;
    if ((originalFilters & 1) == 0)
    {
      v6 = [(NSArray *)v8 copy];
      v7 = self->super._originalFilters;
      self->super._originalFilters = v6;

      v4 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](originalFilters, v4);
}

- (void)setPhotoQualityPrioritization:(int64_t)a3
{
  if (self->super._photoQualityPrioritization != a3)
  {
    self->super._photoQualityPrioritization = a3;
  }
}

- (void)setWantsAutoDualCameraFusion:(BOOL)a3
{
  if (self->super._wantsAutoDualCameraFusion != a3)
  {
    self->super._wantsAutoDualCameraFusion = a3;
  }
}

- (void)setWantsSemanticSceneFilter:(BOOL)a3
{
  if (self->super._wantsSemanticSceneFilter != a3)
  {
    self->super._wantsSemanticSceneFilter = a3;
  }
}

- (void)setSemanticStyle:(id)a3
{
  v5 = a3;
  if (([(CEKCaptureStyle *)self->super._semanticStyle isEqual:?]& 1) == 0)
  {
    objc_storeStrong(&self->super._semanticStyle, a3);
  }
}

- (void)setWantsAudioForCapture:(BOOL)a3
{
  if (self->super._wantsAudioForCapture != a3)
  {
    self->super._wantsAudioForCapture = a3;
  }
}

- (void)setWantsShutterSoundSuppression:(BOOL)a3
{
  if (self->super._wantsShutterSoundSuppression != a3)
  {
    self->super._wantsShutterSoundSuppression = a3;
  }
}

- (void)setWantsSquareCrop:(BOOL)a3
{
  if (self->super._wantsSquareCrop != a3)
  {
    self->super._wantsSquareCrop = a3;
  }
}

- (void)setAspectRatio:(int64_t)a3
{
  if (self->super._aspectRatio != a3)
  {
    self->super._aspectRatio = a3;
  }
}

- (void)setWantsHighResolutionStills:(BOOL)a3
{
  if (self->super._wantsHighResolutionStills != a3)
  {
    self->super._wantsHighResolutionStills = a3;
  }
}

- (void)setStillDuringVideo:(BOOL)a3
{
  if (self->super._stillDuringVideo != a3)
  {
    self->super._stillDuringVideo = a3;
  }
}

- (void)setTextAnalysisIdentifier:(id)a3
{
  v4 = a3;
  v5 = v4;
  if (self->super._textAnalysisIdentifier != v4)
  {
    v8 = v4;
    v4 = [v4 isEqualToString:?];
    v5 = v8;
    if ((v4 & 1) == 0)
    {
      v6 = [v8 copy];
      textAnalysisIdentifier = self->super._textAnalysisIdentifier;
      self->super._textAnalysisIdentifier = v6;

      v5 = v8;
    }
  }

  MEMORY[0x1EEE66BB8](v4, v5);
}

- (void)setTextAnalysisRegion:(id)a3
{
  v5 = a3;
  if (self->super._textAnalysisRegion != v5)
  {
    v6 = v5;
    objc_storeStrong(&self->super._textAnalysisRegion, a3);
    v5 = v6;
  }
}

- (void)setDesiredPreviewSize:(CGSize)a3
{
  if (self->super._desiredPreviewSize.width != a3.width || self->super._desiredPreviewSize.height != a3.height)
  {
    self->super._desiredPreviewSize = a3;
  }
}

- (void)setIrisIdentifier:(id)a3
{
  if (self->super._irisIdentifier != a3)
  {
    v4 = [a3 copy];
    irisIdentifier = self->super._irisIdentifier;
    self->super._irisIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, irisIdentifier);
  }
}

- (void)setDisablesCameraSwitchingDuringRecording:(BOOL)a3
{
  if (self->super._disablesCameraSwitchingDuringRecording != a3)
  {
    self->super._disablesCameraSwitchingDuringRecording = a3;
  }
}

- (void)setTorchMode:(int64_t)a3
{
  if (self->super._torchMode != a3)
  {
    self->super._torchMode = a3;
  }
}

- (void)setLocalCTMVideoDestinationURL:(id)a3
{
  if (self->super._localCTMVideoDestinationURL != a3)
  {
    v4 = [a3 copy];
    localCTMVideoDestinationURL = self->super._localCTMVideoDestinationURL;
    self->super._localCTMVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, localCTMVideoDestinationURL);
  }
}

- (void)setLocalVideoDestinationURL:(id)a3
{
  if (self->super._localVideoDestinationURL != a3)
  {
    v4 = [a3 copy];
    localVideoDestinationURL = self->super._localVideoDestinationURL;
    self->super._localVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, localVideoDestinationURL);
  }
}

- (void)setVideoPersistenceUUID:(id)a3
{
  if (self->super._videoPersistenceUUID != a3)
  {
    v4 = [a3 copy];
    videoPersistenceUUID = self->super._videoPersistenceUUID;
    self->super._videoPersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, videoPersistenceUUID);
  }
}

- (void)setWantsEV0ForHDR:(BOOL)a3
{
  if (self->super._wantsEV0ForHDR != a3)
  {
    self->super._wantsEV0ForHDR = a3;
  }
}

- (void)setEV0IrisIdentifier:(id)a3
{
  if (self->super._EV0IrisIdentifier != a3)
  {
    v4 = [a3 copy];
    EV0IrisIdentifier = self->super._EV0IrisIdentifier;
    self->super._EV0IrisIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, EV0IrisIdentifier);
  }
}

- (void)setEV0LocalVideoDestinationURL:(id)a3
{
  if (self->super._EV0LocalVideoDestinationURL != a3)
  {
    v4 = [a3 copy];
    EV0LocalVideoDestinationURL = self->super._EV0LocalVideoDestinationURL;
    self->super._EV0LocalVideoDestinationURL = v4;

    MEMORY[0x1EEE66BB8](v4, EV0LocalVideoDestinationURL);
  }
}

- (void)setEV0VideoPersistenceUUID:(id)a3
{
  if (self->super._EV0VideoPersistenceUUID != a3)
  {
    v4 = [a3 copy];
    EV0VideoPersistenceUUID = self->super._EV0VideoPersistenceUUID;
    self->super._EV0VideoPersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, EV0VideoPersistenceUUID);
  }
}

- (void)setSessionIdentifier:(unsigned __int16)a3
{
  if (self->super.super._sessionIdentifier != a3)
  {
    self->super.super._sessionIdentifier = a3;
  }
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

- (void)setStereoCaptureStatus:(int64_t)a3
{
  if (self->super._stereoCaptureStatus != a3)
  {
    self->super._stereoCaptureStatus = a3;
  }
}

- (void)setFrontRearSimultaneousCaptureEnabled:(BOOL)a3
{
  if (self->super._frontRearSimultaneousCaptureEnabled != a3)
  {
    self->super._frontRearSimultaneousCaptureEnabled = a3;
  }
}

- (void)setFrontRearSimultaneousCaptureMirrored:(BOOL)a3
{
  if (self->super._frontRearSimultaneousCaptureMirrored != a3)
  {
    self->super._frontRearSimultaneousCaptureMirrored = a3;
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

- (void)setEV0PersistenceUUID:(id)a3
{
  if (self->super._EV0PersistenceUUID != a3)
  {
    v4 = [a3 copy];
    EV0PersistenceUUID = self->super._EV0PersistenceUUID;
    self->super._EV0PersistenceUUID = v4;

    MEMORY[0x1EEE66BB8](v4, EV0PersistenceUUID);
  }
}

- (void)setPhotoEncodingBehavior:(int64_t)a3
{
  if (self->super.super._photoEncodingBehavior != a3)
  {
    self->super.super._photoEncodingBehavior = a3;
  }
}

- (void)setVideoEncodingBehavior:(int64_t)a3
{
  if (self->super.super._videoEncodingBehavior != a3)
  {
    self->super.super._videoEncodingBehavior = a3;
  }
}

- (void)setRawFileFormatBehavior:(int64_t)a3
{
  if (self->super.super._rawFileFormatBehavior != a3)
  {
    self->super.super._rawFileFormatBehavior = a3;
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

- (void)setCapturedFromPhotoBooth:(BOOL)a3
{
  if (self->super.super._capturedFromPhotoBooth != a3)
  {
    self->super.super._capturedFromPhotoBooth = a3;
  }
}

- (void)setOrigin:(int64_t)a3
{
  if (self->super.super._origin != a3)
  {
    self->super.super._origin = a3;
  }
}

- (void)setBurstIdentifier:(id)a3
{
  if (self->super._burstIdentifier != a3)
  {
    v4 = [a3 copy];
    burstIdentifier = self->super._burstIdentifier;
    self->super._burstIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, burstIdentifier);
  }
}

- (void)setMaximumBurstLength:(unint64_t)a3
{
  if (self->super._maximumBurstLength != a3)
  {
    self->super._maximumBurstLength = a3;
  }
}

- (void)setEffectFilterType:(int64_t)a3
{
  if (self->super._effectFilterType != a3)
  {
    self->super._effectFilterType = a3;
  }
}

- (void)setLightingEffectType:(int64_t)a3
{
  if (self->super._lightingEffectType != a3)
  {
    self->super._lightingEffectType = a3;
  }
}

- (void)setAspectRatioCrop:(int64_t)a3
{
  if (self->super._aspectRatioCrop != a3)
  {
    self->super._aspectRatioCrop = a3;
  }
}

- (void)setTimelapseIdentifier:(id)a3
{
  if (self->super._timelapseIdentifier != a3)
  {
    v4 = [a3 copy];
    timelapseIdentifier = self->super._timelapseIdentifier;
    self->super._timelapseIdentifier = v4;

    MEMORY[0x1EEE66BB8](v4, timelapseIdentifier);
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

- (void)setMaximumPhotoResolution:(int64_t)a3
{
  if (self->super._maximumPhotoResolution != a3)
  {
    self->super._maximumPhotoResolution = a3;
  }
}

@end