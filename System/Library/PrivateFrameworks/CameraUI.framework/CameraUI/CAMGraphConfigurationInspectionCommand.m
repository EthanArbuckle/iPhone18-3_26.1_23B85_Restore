@interface CAMGraphConfigurationInspectionCommand
- (CAMGraphConfigurationInspectionCommand)initWithCoder:(id)a3;
- (CAMGraphConfigurationInspectionCommand)initWithKnownGraphConfiguration:(id)a3;
- (id)copyWithZone:(_NSZone *)a3;
- (id)userInfo;
- (int64_t)_resolvedVideoConfigurationFromContext:(id)a3;
- (void)encodeWithCoder:(id)a3;
- (void)executeWithContext:(id)a3;
@end

@implementation CAMGraphConfigurationInspectionCommand

- (id)userInfo
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF90]);
  v4 = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  [v3 setObject:v4 forKey:@"CAMModeAndDeviceCommandResolvedConfiguration"];

  return v3;
}

- (CAMGraphConfigurationInspectionCommand)initWithKnownGraphConfiguration:(id)a3
{
  v5 = a3;
  v11.receiver = self;
  v11.super_class = CAMGraphConfigurationInspectionCommand;
  v6 = [(CAMCaptureCommand *)&v11 init];
  v7 = v6;
  if (v6)
  {
    objc_storeStrong(&v6->__knownGraphConfiguration, a3);
    resolvedGraphConfiguration = v7->__resolvedGraphConfiguration;
    v7->__resolvedGraphConfiguration = 0;

    v9 = v7;
  }

  return v7;
}

- (CAMGraphConfigurationInspectionCommand)initWithCoder:(id)a3
{
  v4 = a3;
  v12.receiver = self;
  v12.super_class = CAMGraphConfigurationInspectionCommand;
  v5 = [(CAMCaptureCommand *)&v12 initWithCoder:v4];
  if (v5)
  {
    v6 = [v4 decodeObjectForKey:@"CAMGraphConfigurationInspectionCommandKnownConfiguration"];
    knownGraphConfiguration = v5->__knownGraphConfiguration;
    v5->__knownGraphConfiguration = v6;

    v8 = [v4 decodeObjectForKey:@"CAMGraphConfigurationInspectionCommandResolvedConfiguration"];
    resolvedGraphConfiguration = v5->__resolvedGraphConfiguration;
    v5->__resolvedGraphConfiguration = v8;

    v10 = v5;
  }

  return v5;
}

- (void)encodeWithCoder:(id)a3
{
  v7.receiver = self;
  v7.super_class = CAMGraphConfigurationInspectionCommand;
  v4 = a3;
  [(CAMCaptureCommand *)&v7 encodeWithCoder:v4];
  v5 = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration:v7.receiver];
  [v4 encodeObject:v5 forKey:@"CAMGraphConfigurationInspectionCommandKnownConfiguration"];

  v6 = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  [v4 encodeObject:v6 forKey:@"CAMGraphConfigurationInspectionCommandResolvedConfiguration"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v10.receiver = self;
  v10.super_class = CAMGraphConfigurationInspectionCommand;
  v4 = [(CAMCaptureCommand *)&v10 copyWithZone:a3];
  v5 = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration];
  v6 = v4[3];
  v4[3] = v5;

  v7 = [(CAMGraphConfigurationInspectionCommand *)self _resolvedGraphConfiguration];
  v8 = v4[4];
  v4[4] = v7;

  return v4;
}

- (void)executeWithContext:(id)a3
{
  v48 = a3;
  v4 = [(CAMGraphConfigurationInspectionCommand *)self _knownGraphConfiguration];
  v5 = [v4 mode];
  if (v5 > 9)
  {
    v6 = 0;
  }

  else if (((1 << v5) & 0x279) != 0 || [v4 videoConfiguration])
  {
    v6 = v4;
  }

  else
  {
    v47 = [(CAMGraphConfigurationInspectionCommand *)self _resolvedVideoConfigurationFromContext:v48];
    v46 = [CAMCaptureGraphConfiguration alloc];
    v45 = [v4 mode];
    v44 = [v4 device];
    v43 = [v4 macroMode];
    v42 = [v4 audioConfiguration];
    v41 = [v4 mixAudioWithOthers];
    v40 = [v4 windNoiseRemovalEnabled];
    v39 = [v4 previewConfiguration];
    v38 = [v4 previewSampleBufferVideoFormat];
    v37 = [v4 previewFilters];
    v36 = [v4 videoThumbnailOutputConfiguration];
    v35 = [v4 photoEncodingBehavior];
    v34 = [v4 videoEncodingBehavior];
    v33 = [v4 enableAutoFPSVideo];
    v32 = [v4 isVideoHDRSuspended];
    v31 = [v4 aspectRatioCrop];
    v30 = [v4 photoQualityPrioritization];
    v29 = [v4 isCaptureMirrored];
    v28 = [v4 enableRAWCaptureIfSupported];
    v27 = [v4 semanticStyleSupport];
    v26 = [v4 previewSemanticStyle];
    v25 = [v4 smartStyles];
    v24 = [v4 enableContentAwareDistortionCorrection];
    v23 = [v4 enableResponsiveShutter];
    v22 = [v4 suspendLivePhotoCapture];
    v21 = [v4 videoStabilizationStrength];
    v20 = [v4 maximumPhotoResolution];
    v19 = [v4 colorSpace];
    v7 = [v4 isVideoBinned];
    v8 = [v4 enableDepthSuggestion];
    v9 = [v4 enableZoomPIP];
    v10 = [v4 customLensGroup];
    v11 = [v4 trueVideoEnabled];
    v12 = [v4 prefersHDR10BitVideo];
    BYTE2(v18) = [v4 frontRearSimultaneousVideoEnabled];
    BYTE1(v18) = v12;
    LOBYTE(v18) = v11;
    BYTE2(v17) = v9;
    BYTE1(v17) = v8;
    LOBYTE(v17) = v7;
    BYTE2(v16) = v22;
    BYTE1(v16) = v23;
    LOBYTE(v16) = v24;
    BYTE1(v15) = v28;
    LOBYTE(v15) = v29;
    BYTE1(v14) = v32;
    LOBYTE(v14) = v33;
    LOBYTE(v13) = v40;
    v6 = -[CAMCaptureGraphConfiguration initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:](v46, "initWithCaptureMode:captureDevice:macroMode:videoConfiguration:audioConfiguration:mixAudioWithOthers:windNoiseRemovalEnabled:previewConfiguration:previewSampleBufferVideoFormat:previewFilters:videoThumbnailOutputConfiguration:photoEncodingBehavior:videoEncodingBehavior:enableAutoFPSVideo:videoHDRSuspended:aspectRatioCrop:photoQualityPrioritization:captureMirrored:enableRAWCaptureIfSupported:semanticStyleSupport:previewSemanticStyle:smartStyles:enableContentAwareDistortionCorrection:enableResponsiveShutter:suspendLivePhotoCapture:videoStabilizationStrength:maximumPhotoResolution:colorSpace:videoBinned:enableDepthSuggestion:enableZoomPIP:customLensGroup:trueVideoEnabled:prefersHDR10BitVideo:frontRearSimultaneousVideoEnabled:videoDynamicAspectRatio:smartFramingFieldOfView:", v45, v44, v43, v47, v42, v41, v13, v39, v38, v37, v36, v35, v34, v14, v31, v30, v15, v27, v26, v25, v16, v21, v20, v19, v17, v10, v18, [v4 videoDynamicAspectRatio], objc_msgSend(v4, "smartFramingFieldOfView"));
  }

  [(CAMGraphConfigurationInspectionCommand *)self _setResolvedGraphConfiguration:v6];
}

- (int64_t)_resolvedVideoConfigurationFromContext:(id)a3
{
  v3 = a3;
  v4 = [v3 currentVideoDevice];
  v5 = [v3 currentVideoDeviceFormat];

  Dimensions = CMVideoFormatDescriptionGetDimensions([v5 formatDescription]);
  v7 = HIDWORD(Dimensions);
  v9 = Dimensions == 1280 && v7 == 720;
  v11 = Dimensions == 1920 && v7 == 1080;
  v13 = Dimensions == 3840 && v7 == 2160;
  if (v4)
  {
    [v4 activeVideoMinFrameDuration];
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