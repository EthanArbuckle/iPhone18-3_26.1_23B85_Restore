@interface CAMGraphConfigurationInspectionCommand
- (CAMGraphConfigurationInspectionCommand)initWithCoder:(id)coder;
- (CAMGraphConfigurationInspectionCommand)initWithKnownGraphConfiguration:(id)configuration;
- (id)copyWithZone:(_NSZone *)zone;
- (id)userInfo;
- (int64_t)_resolvedVideoConfigurationFromContext:(id)context;
- (void)encodeWithCoder:(id)coder;
- (void)executeWithContext:(id)context;
@end

@implementation CAMGraphConfigurationInspectionCommand

- (id)userInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  _resolvedGraphConfiguration = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  [v3 setObject:_resolvedGraphConfiguration forKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];

  return v3;
}

- (CAMGraphConfigurationInspectionCommand)initWithKnownGraphConfiguration:(id)configuration
{
  configurationCopy = configuration;
  v11.receiver = self;
  v11.super_class = CAMGraphConfigurationInspectionCommand;
  v6 = [(CAMCaptureCommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__knownGraphConfiguration, configuration);
    resolvedGraphConfiguration = v7->__resolvedGraphConfiguration;
    v7->__resolvedGraphConfiguration = 0;

    v9 = v7;
  }

  return v7;
}

- (CAMGraphConfigurationInspectionCommand)initWithCoder:(id)coder
{
  coderCopy = coder;
  v12.receiver = self;
  v12.super_class = CAMGraphConfigurationInspectionCommand;
  v5 = [(CAMCaptureCommand *)&v12 initWithCoder:coderCopy];
  if (v5)
  {
    v6 = [coderCopy decodeObjectForKey:@"CAMGraphConfigurationInspectionCommandKnownConfiguration"];
    knownGraphConfiguration = v5->__knownGraphConfiguration;
    v5->__knownGraphConfiguration = v6;

    v8 = [coderCopy decodeObjectForKey:@"CAMGraphConfigurationInspectionCommandResolvedConfiguration"];
    resolvedGraphConfiguration = v5->__resolvedGraphConfiguration;
    v5->__resolvedGraphConfiguration = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)coder
{
  v7.receiver = self;
  v7.super_class = CAMGraphConfigurationInspectionCommand;
  coderCopy = coder;
  [(CAMCaptureCommand *)&v7 encodeWithCoder:coderCopy];
  v5 = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration:v7.receiver];
  [coderCopy encodeObject:v5 forKey:@"CAMGraphConfigurationInspectionCommandKnownConfiguration"];

  _resolvedGraphConfiguration = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  [coderCopy encodeObject:_resolvedGraphConfiguration forKey:@"CAMGraphConfigurationInspectionCommandResolvedConfiguration"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v10.receiver = self;
  v10.super_class = CAMGraphConfigurationInspectionCommand;
  v4 = [(CAMCaptureCommand *)&v10 copyWithZone:zone];
  _knownGraphConfiguration = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration];
  v6 = v4[3];
  v4[3] = _knownGraphConfiguration;

  _resolvedGraphConfiguration = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  v8 = v4[4];
  v4[4] = _resolvedGraphConfiguration;

  return v4;
}

- (void)executeWithContext:(id)context
{
  contextCopy = context;
  _knownGraphConfiguration = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration];
  mode = [_knownGraphConfiguration mode];
  if (mode > 9)
  {
    v6 = 0;
  }

  else if (((1 << mode) & 0x279) != 0 || [_knownGraphConfiguration videoConfiguration])
  {
    v6 = _knownGraphConfiguration;
  }

  else
  {
    v47 = [(CAMGraphConfigurationInspectionCommand *)self _resolvedVideoConfigurationFromContext:contextCopy];
    v46 = [CAMCaptureGraphConfiguration alloc];
    mode2 = [_knownGraphConfiguration mode];
    device = [_knownGraphConfiguration device];
    macroMode = [_knownGraphConfiguration macroMode];
    audioConfiguration = [_knownGraphConfiguration audioConfiguration];
    mixAudioWithOthers = [_knownGraphConfiguration mixAudioWithOthers];
    windNoiseRemovalEnabled = [_knownGraphConfiguration windNoiseRemovalEnabled];
    previewConfiguration = [_knownGraphConfiguration previewConfiguration];
    previewSampleBufferVideoFormat = [_knownGraphConfiguration previewSampleBufferVideoFormat];
    previewFilters = [_knownGraphConfiguration previewFilters];
    videoThumbnailOutputConfiguration = [_knownGraphConfiguration videoThumbnailOutputConfiguration];
    photoEncodingBehavior = [_knownGraphConfiguration photoEncodingBehavior];
    videoEncodingBehavior = [_knownGraphConfiguration videoEncodingBehavior];
    enableAutoFPSVideo = [_knownGraphConfiguration enableAutoFPSVideo];
    isVideoHDRSuspended = [_knownGraphConfiguration isVideoHDRSuspended];
    aspectRatioCrop = [_knownGraphConfiguration aspectRatioCrop];
    photoQualityPrioritization = [_knownGraphConfiguration photoQualityPrioritization];
    isCaptureMirrored = [_knownGraphConfiguration isCaptureMirrored];
    enableRAWCaptureIfSupported = [_knownGraphConfiguration enableRAWCaptureIfSupported];
    semanticStyleSupport = [_knownGraphConfiguration semanticStyleSupport];
    previewSemanticStyle = [_knownGraphConfiguration previewSemanticStyle];
    smartStyles = [_knownGraphConfiguration smartStyles];
    enableContentAwareDistortionCorrection = [_knownGraphConfiguration enableContentAwareDistortionCorrection];
    enableResponsiveShutter = [_knownGraphConfiguration enableResponsiveShutter];
    suspendLivePhotoCapture = [_knownGraphConfiguration suspendLivePhotoCapture];
    videoStabilizationStrength = [_knownGraphConfiguration videoStabilizationStrength];
    maximumPhotoResolution = [_knownGraphConfiguration maximumPhotoResolution];
    colorSpace = [_knownGraphConfiguration colorSpace];
    isVideoBinned = [_knownGraphConfiguration isVideoBinned];
    enableDepthSuggestion = [_knownGraphConfiguration enableDepthSuggestion];
    enableZoomPIP = [_knownGraphConfiguration enableZoomPIP];
    customLensGroup = [_knownGraphConfiguration customLensGroup];
    trueVideoEnabled = [_knownGraphConfiguration trueVideoEnabled];
    prefersHDR10BitVideo = [_knownGraphConfiguration prefersHDR10BitVideo];
    BYTE2(v18) = [_knownGraphConfiguration frontRearSimultaneousVideoEnabled];
    BYTE1(v18) = prefersHDR10BitVideo;
    LOBYTE(v18) = trueVideoEnabled;
    BYTE2(v17) = enableZoomPIP;
    BYTE1(v17) = enableDepthSuggestion;
    LOBYTE(v17) = isVideoBinned;
    BYTE2(v16) = suspendLivePhotoCapture;
    BYTE1(v16) = enableResponsiveShutter;
    LOBYTE(v16) = enableContentAwareDistortionCorrection;
    BYTE1(v15) = enableRAWCaptureIfSupported;
    LOBYTE(v15) = isCaptureMirrored;
    BYTE1(v14) = isVideoHDRSuspended;
    LOBYTE(v14) = enableAutoFPSVideo;
    LOBYTE(v13) = windNoiseRemovalEnabled;
    v6 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v46, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", mode2, device, macroMode, v47, audioConfiguration, mixAudioWithOthers, v13, previewConfiguration, previewSampleBufferVideoFormat, previewFilters, videoThumbnailOutputConfiguration, photoEncodingBehavior, videoEncodingBehavior, v14, aspectRatioCrop, photoQualityPrioritization, v15, semanticStyleSupport, previewSemanticStyle, smartStyles, v16, videoStabilizationStrength, maximumPhotoResolution, colorSpace, v17, customLensGroup, v18, [_knownGraphConfiguration videoDynamicAspectRatio], objc_msgSend(_knownGraphConfiguration, "smartFramingFieldOfView"));
  }

  [(CAMGraphConfigurationInspectionCommand *)self _setResolvedGraphConfiguration:v6];
}

- (int64_t)_resolvedVideoConfigurationFromContext:(id)context
{
  contextCopy = context;
  currentVideoDevice = [contextCopy currentVideoDevice];
  currentVideoDeviceFormat = [contextCopy currentVideoDeviceFormat];

  Dimensions = CMVideoFormatDescriptionGetDimensions([currentVideoDeviceFormat formatDescription]);
  v7 = HIDWORD(Dimensions);
  v9 = Dimensions == 1280 && v7 == 720;
  v11 = Dimensions == 1920 && v7 == 1080;
  v13 = Dimensions == 3840 && v7 == 2160;
  if (currentVideoDevice)
  {
    [currentVideoDevice activeVideoMinFrameDuration];
    v14 = 0 / 0;
    if (0 / 0 == 30 && v9)
    {
      v16 = 6;
      goto LABEL_88;
    }

    LODWORD(v7) = v14 == 120;
    if (v14 == 120 && v9)
    {
      v16 = 2;
      goto LABEL_88;
    }

    if (v14 == 240 && v9)
    {
      v16 = 3;
      goto LABEL_88;
    }

    if (v14 == 25 && v11)
    {
      v16 = 11;
      goto LABEL_88;
    }

    if (v14 == 30 && v11)
    {
      v16 = 7;
      goto LABEL_88;
    }

    if (v14 == 60 && v11)
    {
      v16 = 1;
      goto LABEL_88;
    }

    if (v14 == 120 && v11)
    {
      v16 = 4;
      goto LABEL_88;
    }

    if (v14 == 240 && v11)
    {
      v16 = 8;
      goto LABEL_88;
    }

    if (v14 == 24 && v13)
    {
      v16 = 10;
      goto LABEL_88;
    }

    if (v14 == 25 && v13)
    {
      v16 = 12;
      goto LABEL_88;
    }

    if (v14 == 30 && v13)
    {
      v16 = 5;
      goto LABEL_88;
    }

    if (v14 == 60 && v13)
    {
      v16 = 9;
      goto LABEL_88;
    }

    if (v14 == 100 && v13)
    {
      v16 = 14;
      goto LABEL_88;
    }
  }

  if ((v13 & v7) != 0)
  {
    v16 = 13;
  }

  else
  {
    v16 = 0;
  }

LABEL_88:

  return v16;
}

@end