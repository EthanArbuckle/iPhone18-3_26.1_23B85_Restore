@interface CAMCaptureGraphConfiguration
- (BOOL)isSecondaryDeviceVideoBinned;
- (BOOL)secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate;
- (CAMCaptureGraphConfiguration)initWithCaptureMode:(int64_t)mode captureDevice:(int64_t)device macroMode:(int64_t)macroMode videoConfiguration:(int64_t)configuration audioConfiguration:(unint64_t)audioConfiguration mixAudioWithOthers:(BOOL)others windNoiseRemovalEnabled:(BOOL)enabled previewConfiguration:(unint64_t)self0 previewSampleBufferVideoFormat:(int64_t)self1 previewFilters:(id)self2 videoThumbnailOutputConfiguration:(id)self3 photoEncodingBehavior:(int64_t)self4 videoEncodingBehavior:(int64_t)self5 enableAutoFPSVideo:(BOOL)self6 videoHDRSuspended:(BOOL)self7 aspectRatioCrop:(int64_t)self8 photoQualityPrioritization:(int64_t)self9 captureMirrored:(BOOL)mirrored enableRAWCaptureIfSupported:(BOOL)supported semanticStyleSupport:(unint64_t)support previewSemanticStyle:(id)style smartStyles:(id)styles enableContentAwareDistortionCorrection:(BOOL)correction enableResponsiveShutter:(BOOL)shutter suspendLivePhotoCapture:(BOOL)capture videoStabilizationStrength:(int64_t)strength maximumPhotoResolution:(int64_t)resolution colorSpace:(int64_t)mode0 videoBinned:(BOOL)mode1 enableDepthSuggestion:(BOOL)mode2 enableZoomPIP:(BOOL)mode3 customLensGroup:(id)mode4 trueVideoEnabled:(BOOL)mode5 prefersHDR10BitVideo:(BOOL)mode6 frontRearSimultaneousVideoEnabled:(BOOL)mode7 videoDynamicAspectRatio:(int64_t)mode8 smartFramingFieldOfView:(int64_t)mode9;
- (id)completeDescription;
- (id)deviceDescription;
- (id)devicePositionDescription;
- (id)modeDescription;
- (id)shortDescription;
- (int64_t)devicePosition;
- (int64_t)secondaryDevice:(BOOL *)device;
- (int64_t)secondaryDeviceColorSpace;
- (int64_t)secondaryDeviceVideoConfiguration;
- (int64_t)secondaryDeviceVideoDynamicAspectRatio;
- (int64_t)secondaryDeviceVideoStabilizationStrength;
@end

@implementation CAMCaptureGraphConfiguration

- (id)completeDescription
{
  mode = [(CAMCaptureGraphConfiguration *)self mode];
  if (mode > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FDA00[mode];
  }

  device = [(CAMCaptureGraphConfiguration *)self device];
  if (device > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E76FDAD8[device];
  }

  videoConfiguration = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
  v8 = 0;
  if (videoConfiguration > 9999)
  {
    if (videoConfiguration > 10002)
    {
      switch(videoConfiguration)
      {
        case 10003:
          v8 = @"ImagePickerVGA";
          break;
        case 10004:
          v8 = @"ImagePickeriFrame720p";
          break;
        case 10005:
          v8 = @"ImagePickeriFrame540p";
          break;
      }
    }

    else if (videoConfiguration == 10000)
    {
      v8 = @"ImagePickerHigh";
    }

    else if (videoConfiguration == 10001)
    {
      v8 = @"ImagePickerMedium";
    }

    else
    {
      v8 = @"ImagePickerLow";
    }
  }

  else
  {
    switch(videoConfiguration)
    {
      case 0:
        v8 = @"Auto";
        break;
      case 1:
        v8 = @"1080p60";
        break;
      case 2:
        v8 = @"720p120";
        break;
      case 3:
        v8 = @"720p240";
        break;
      case 4:
        v8 = @"1080p120";
        break;
      case 5:
        v8 = @"4k30";
        break;
      case 6:
        v8 = @"720p30";
        break;
      case 7:
        v8 = @"1080p30";
        break;
      case 8:
        v8 = @"1080p240";
        break;
      case 9:
        v8 = @"4k60";
        break;
      case 10:
        v8 = @"4k24";
        break;
      case 11:
        v8 = @"1080p25";
        break;
      case 12:
        v8 = @"4k25";
        break;
      case 13:
        v8 = @"4k120";
        break;
      case 14:
        v8 = @"4k100";
        break;
      default:
        break;
    }
  }

  audioConfiguration = [(CAMCaptureGraphConfiguration *)self audioConfiguration];
  if (audioConfiguration > 3)
  {
    v69 = 0;
  }

  else
  {
    v69 = off_1E76FDA50[audioConfiguration];
  }

  previewConfiguration = [(CAMCaptureGraphConfiguration *)self previewConfiguration];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v12 = v11;
  if (previewConfiguration)
  {
    [v11 addObject:@"Layer"];
    if ((previewConfiguration & 2) == 0)
    {
LABEL_41:
      if ((previewConfiguration & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((previewConfiguration & 2) == 0)
  {
    goto LABEL_41;
  }

  [v12 addObject:@"VideoDataOutput"];
  if ((previewConfiguration & 4) != 0)
  {
LABEL_42:
    [v12 addObject:@"ThumbnailOutput"];
  }

LABEL_43:
  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__27;
  v76 = __Block_byref_object_dispose__27;
  v77 = 0;
  v13 = [v12 count];
  v14 = v73[5];
  if (v13)
  {
    v73[5] = @"Preview";

    v71[0] = MEMORY[0x1E69E9820];
    v71[1] = 3221225472;
    v71[2] = __CAMDebugStringForPreviewConfiguration_block_invoke;
    v71[3] = &unk_1E76FB1A0;
    v71[4] = &v72;
    [v12 enumerateObjectsUsingBlock:v71];
  }

  else
  {
    v73[5] = @"PreviewDisabled";
  }

  v67 = v73[5];
  _Block_object_dispose(&v72, 8);

  if ([(CAMCaptureGraphConfiguration *)self mixAudioWithOthers])
  {
    v69 = [(__CFString *)v69 stringByAppendingString:@"_MixWithOthers"];
  }

  v15 = +[CAMCaptureCapabilities capabilities];
  colorSpace = [(CAMCaptureGraphConfiguration *)self colorSpace];
  if (colorSpace)
  {
    if (colorSpace == 3)
    {
      v17 = @"Log";
    }

    else
    {
      if (colorSpace != 2)
      {
        goto LABEL_58;
      }

      v17 = @"HDR10";
    }
  }

  else
  {
    v17 = @"sRGB";
  }

  v8 = [(__CFString *)v8 stringByAppendingFormat:@"_%@", v17];
LABEL_58:
  if ([(CAMCaptureGraphConfiguration *)self isVideoBinned])
  {
    v18 = [(__CFString *)v8 stringByAppendingString:@"_Binned"];

    v8 = v18;
  }

  if ([v15 isAutoFPSVideoSupportedForMode:-[CAMCaptureGraphConfiguration mode](self videoConfiguration:"mode") videoEncodingBehavior:-[CAMCaptureGraphConfiguration videoConfiguration](self outputToExternalStorage:"videoConfiguration") prefersHDR10BitVideo:-[CAMCaptureGraphConfiguration videoEncodingBehavior](self frontRearSimultaneousVideoEnabled:{"videoEncodingBehavior"), 0, -[CAMCaptureGraphConfiguration prefersHDR10BitVideo](self, "prefersHDR10BitVideo"), -[CAMCaptureGraphConfiguration frontRearSimultaneousVideoEnabled](self, "frontRearSimultaneousVideoEnabled")}])
  {
    if ([(CAMCaptureGraphConfiguration *)self enableAutoFPSVideo])
    {
      v19 = @"_AutoFPS";
    }

    else
    {
      v19 = @"_AutoFPSDisabled";
    }

    v20 = [(__CFString *)v8 stringByAppendingString:v19];

    v8 = v20;
  }

  v72 = 0;
  v73 = &v72;
  v74 = 0x3032000000;
  v75 = __Block_byref_object_copy__27;
  v76 = __Block_byref_object_dispose__27;
  v77 = 0;
  previewFilters = [(CAMCaptureGraphConfiguration *)self previewFilters];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __51__CAMCaptureGraphConfiguration_completeDescription__block_invoke;
  v70[3] = &unk_1E76FD9E0;
  v70[4] = &v72;
  [previewFilters enumerateObjectsUsingBlock:v70];
  v66 = previewFilters;
  v22 = MEMORY[0x1E696AD60];
  photoQualityPrioritization = [(CAMCaptureGraphConfiguration *)self photoQualityPrioritization];
  if (photoQualityPrioritization > 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_1E76FDA70[photoQualityPrioritization];
  }

  v25 = objc_msgSend(v22, "stringWithFormat:", @"%@/%@(%@,%@,%@,%@"), v4, v6, v8, v69, v67, v24;
  if ([(CAMCaptureGraphConfiguration *)self isCaptureMirrored])
  {
    [v25 appendFormat:@", Mirrored"];
  }

  if ([(CAMCaptureGraphConfiguration *)self enableRAWCaptureIfSupported])
  {
    [v25 appendFormat:@", RAW Enabled"];
  }

  if ([(CAMCaptureGraphConfiguration *)self videoEncodingBehavior]== 2)
  {
    [v25 appendFormat:@", ProRes"];
    if ([(CAMCaptureGraphConfiguration *)self colorSpace]== 3)
    {
      [v25 appendFormat:@"Log"];
    }
  }

  if ((~[(CAMCaptureGraphConfiguration *)self semanticStyleSupport]& 5) != 0)
  {
    if (([(CAMCaptureGraphConfiguration *)self semanticStyleSupport]& 1) != 0)
    {
      v26 = @",SemanticStyle Capture";
    }

    else
    {
      if (([(CAMCaptureGraphConfiguration *)self semanticStyleSupport]& 4) == 0)
      {
        goto LABEL_82;
      }

      v26 = @",SemanticStyle Preview";
    }
  }

  else
  {
    v26 = @",SemanticStyle Capture/Preview";
  }

  [v25 appendFormat:v26];
LABEL_82:
  previewSemanticStyle = [(CAMCaptureGraphConfiguration *)self previewSemanticStyle];

  if (previewSemanticStyle)
  {
    previewSemanticStyle2 = [(CAMCaptureGraphConfiguration *)self previewSemanticStyle];
    [v25 appendFormat:@", PreviewSemanticStyle: %@", previewSemanticStyle2];
  }

  v29 = [v15 isContentAwareDistortionCorrectionSupportedForMode:{-[CAMCaptureGraphConfiguration mode](self, "mode")}];
  enableContentAwareDistortionCorrection = [(CAMCaptureGraphConfiguration *)self enableContentAwareDistortionCorrection];
  if ((enableContentAwareDistortionCorrection | v29))
  {
    if (enableContentAwareDistortionCorrection)
    {
      v31 = @",ContentAwareDistortion";
    }

    else
    {
      v31 = @",ContentAwareDistortionDisabled";
    }

    [v25 appendFormat:v31];
  }

  if ([(CAMCaptureGraphConfiguration *)self aspectRatioCrop])
  {
    aspectRatioCrop = [(CAMCaptureGraphConfiguration *)self aspectRatioCrop];
    if (aspectRatioCrop > 6)
    {
      v33 = 0;
    }

    else
    {
      v33 = off_1E76FDA88[aspectRatioCrop];
    }

    [v25 appendFormat:@", %@", v33];
  }

  if ([v73[5] length])
  {
    [v25 appendFormat:@", filters=%@", v73[5]];
  }

  if ([(CAMCaptureGraphConfiguration *)self enableResponsiveShutter])
  {
    v34 = @",ResponsiveShutter";
LABEL_100:
    [v25 appendFormat:v34];
    goto LABEL_101;
  }

  if ([v15 responsiveShutterSupported])
  {
    v34 = @",ResponsiveShutterDisabled";
    goto LABEL_100;
  }

LABEL_101:
  if (-[CAMCaptureGraphConfiguration suspendLivePhotoCapture](self, "suspendLivePhotoCapture") && [v15 isLivePhotoSupported])
  {
    [v25 appendFormat:@", LivePhotoSuspended"];
  }

  v68 = v15;
  videoStabilizationStrength = [(CAMCaptureGraphConfiguration *)self videoStabilizationStrength];
  mode2 = [(CAMCaptureGraphConfiguration *)self mode];
  device2 = [(CAMCaptureGraphConfiguration *)self device];
  videoConfiguration2 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
  videoEncodingBehavior = [(CAMCaptureGraphConfiguration *)self videoEncodingBehavior];
  trueVideoEnabled = [(CAMCaptureGraphConfiguration *)self trueVideoEnabled];
  prefersHDR10BitVideo = [(CAMCaptureGraphConfiguration *)self prefersHDR10BitVideo];
  BYTE2(v64) = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
  BYTE1(v64) = prefersHDR10BitVideo;
  LOBYTE(v64) = trueVideoEnabled;
  if ([v68 isVideoStabilizationStrength:videoStabilizationStrength supportedForMode:mode2 device:device2 videoConfiguration:videoConfiguration2 videoEncodingBehavior:videoEncodingBehavior outputToExternalStorage:0 trueVideoEnabled:v64 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?])
  {
    videoStabilizationStrength2 = [(CAMCaptureGraphConfiguration *)self videoStabilizationStrength];
    if (videoStabilizationStrength2 > 3)
    {
      v43 = 0;
    }

    else
    {
      v43 = off_1E76FDB38[videoStabilizationStrength2];
    }

    [v25 appendFormat:@", %@", v43];
  }

  v44 = [(CAMCaptureGraphConfiguration *)self maximumPhotoResolution]- 1;
  if (v44 <= 2)
  {
    [v25 appendFormat:off_1E76FDAC0[v44]];
  }

  [v25 appendFormat:@""]);
  LOBYTE(v71[0]) = 0;
  v45 = [(CAMCaptureGraphConfiguration *)self secondaryDevice:v71];
  if (LOBYTE(v71[0]) == 1)
  {
    v46 = v45;
    if (v45 > 0xB)
    {
      v47 = 0;
    }

    else
    {
      v47 = off_1E76FDAD8[v45];
    }

    secondaryDeviceVideoConfiguration = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
    v49 = 0;
    if (secondaryDeviceVideoConfiguration > 9999)
    {
      if (secondaryDeviceVideoConfiguration > 10002)
      {
        switch(secondaryDeviceVideoConfiguration)
        {
          case 10003:
            v49 = @"ImagePickerVGA";
            break;
          case 10004:
            v49 = @"ImagePickeriFrame720p";
            break;
          case 10005:
            v49 = @"ImagePickeriFrame540p";
            break;
        }
      }

      else if (secondaryDeviceVideoConfiguration == 10000)
      {
        v49 = @"ImagePickerHigh";
      }

      else if (secondaryDeviceVideoConfiguration == 10001)
      {
        v49 = @"ImagePickerMedium";
      }

      else
      {
        v49 = @"ImagePickerLow";
      }
    }

    else
    {
      switch(secondaryDeviceVideoConfiguration)
      {
        case 0:
          v49 = @"Auto";
          break;
        case 1:
          v49 = @"1080p60";
          break;
        case 2:
          v49 = @"720p120";
          break;
        case 3:
          v49 = @"720p240";
          break;
        case 4:
          v49 = @"1080p120";
          break;
        case 5:
          v49 = @"4k30";
          break;
        case 6:
          v49 = @"720p30";
          break;
        case 7:
          v49 = @"1080p30";
          break;
        case 8:
          v49 = @"1080p240";
          break;
        case 9:
          v49 = @"4k60";
          break;
        case 10:
          v49 = @"4k24";
          break;
        case 11:
          v49 = @"1080p25";
          break;
        case 12:
          v49 = @"4k25";
          break;
        case 13:
          v49 = @"4k120";
          break;
        case 14:
          v49 = @"4k100";
          break;
        default:
          break;
      }
    }

    objc_msgSend(v25, "appendFormat:", @"+%@(%@"), v47, v49;
    if (![(CAMCaptureGraphConfiguration *)self secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate])
    {
LABEL_169:
      secondaryDeviceColorSpace = [(CAMCaptureGraphConfiguration *)self secondaryDeviceColorSpace];
      if (secondaryDeviceColorSpace)
      {
        if (secondaryDeviceColorSpace == 3)
        {
          v53 = @"Log";
        }

        else
        {
          if (secondaryDeviceColorSpace != 2)
          {
LABEL_176:
            if ([(CAMCaptureGraphConfiguration *)self isSecondaryDeviceVideoBinned])
            {
              [v25 appendFormat:@"_Binned"];
            }

            secondaryDeviceVideoStabilizationStrength = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoStabilizationStrength];
            mode3 = [(CAMCaptureGraphConfiguration *)self mode];
            secondaryDeviceVideoConfiguration2 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
            videoEncodingBehavior2 = [(CAMCaptureGraphConfiguration *)self videoEncodingBehavior];
            trueVideoEnabled2 = [(CAMCaptureGraphConfiguration *)self trueVideoEnabled];
            prefersHDR10BitVideo2 = [(CAMCaptureGraphConfiguration *)self prefersHDR10BitVideo];
            BYTE2(v65) = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
            BYTE1(v65) = prefersHDR10BitVideo2;
            LOBYTE(v65) = trueVideoEnabled2;
            if ([v68 isVideoStabilizationStrength:secondaryDeviceVideoStabilizationStrength supportedForMode:mode3 device:v46 videoConfiguration:secondaryDeviceVideoConfiguration2 videoEncodingBehavior:videoEncodingBehavior2 outputToExternalStorage:0 trueVideoEnabled:v65 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?])
            {
              secondaryDeviceVideoStabilizationStrength2 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoStabilizationStrength];
              if (secondaryDeviceVideoStabilizationStrength2 > 3)
              {
                v61 = 0;
              }

              else
              {
                v61 = off_1E76FDB38[secondaryDeviceVideoStabilizationStrength2];
              }

              [v25 appendFormat:@", %@", v61];
            }

            [v25 appendFormat:@""]);
            goto LABEL_184;
          }

          v53 = @"HDR10";
        }
      }

      else
      {
        v53 = @"sRGB";
      }

      [v25 appendFormat:@"_%@", v53];
      goto LABEL_176;
    }

    videoConfiguration3 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
    v51 = 0;
    if (videoConfiguration3 > 8)
    {
      if (videoConfiguration3 <= 12)
      {
        if ((videoConfiguration3 - 11) < 2)
        {
          v51 = 25;
          goto LABEL_168;
        }

        if (videoConfiguration3 != 9)
        {
          if (videoConfiguration3 == 10)
          {
            v51 = 24;
          }

          goto LABEL_168;
        }

        goto LABEL_165;
      }

      if (videoConfiguration3 == 13)
      {
        goto LABEL_164;
      }

      if (videoConfiguration3 == 14)
      {
        v51 = 100;
        goto LABEL_168;
      }

      if (videoConfiguration3 != 10003)
      {
LABEL_168:
        [v25 appendFormat:@"_%dfpsOverride", v51];
        goto LABEL_169;
      }
    }

    else
    {
      if (videoConfiguration3 <= 3)
      {
        if (videoConfiguration3 != 1)
        {
          if (videoConfiguration3 != 2)
          {
            if (videoConfiguration3 != 3)
            {
              goto LABEL_168;
            }

            goto LABEL_159;
          }

LABEL_164:
          v51 = 120;
          goto LABEL_168;
        }

LABEL_165:
        v51 = 60;
        goto LABEL_168;
      }

      if ((videoConfiguration3 - 5) >= 3)
      {
        if (videoConfiguration3 == 4)
        {
          goto LABEL_164;
        }

        if (videoConfiguration3 == 8)
        {
LABEL_159:
          v51 = 240;
          goto LABEL_168;
        }

        goto LABEL_168;
      }
    }

    v51 = 30;
    goto LABEL_168;
  }

LABEL_184:
  v62 = v25;

  _Block_object_dispose(&v72, 8);

  return v62;
}

- (CAMCaptureGraphConfiguration)initWithCaptureMode:(int64_t)mode captureDevice:(int64_t)device macroMode:(int64_t)macroMode videoConfiguration:(int64_t)configuration audioConfiguration:(unint64_t)audioConfiguration mixAudioWithOthers:(BOOL)others windNoiseRemovalEnabled:(BOOL)enabled previewConfiguration:(unint64_t)self0 previewSampleBufferVideoFormat:(int64_t)self1 previewFilters:(id)self2 videoThumbnailOutputConfiguration:(id)self3 photoEncodingBehavior:(int64_t)self4 videoEncodingBehavior:(int64_t)self5 enableAutoFPSVideo:(BOOL)self6 videoHDRSuspended:(BOOL)self7 aspectRatioCrop:(int64_t)self8 photoQualityPrioritization:(int64_t)self9 captureMirrored:(BOOL)mirrored enableRAWCaptureIfSupported:(BOOL)supported semanticStyleSupport:(unint64_t)support previewSemanticStyle:(id)style smartStyles:(id)styles enableContentAwareDistortionCorrection:(BOOL)correction enableResponsiveShutter:(BOOL)shutter suspendLivePhotoCapture:(BOOL)capture videoStabilizationStrength:(int64_t)strength maximumPhotoResolution:(int64_t)resolution colorSpace:(int64_t)mode0 videoBinned:(BOOL)mode1 enableDepthSuggestion:(BOOL)mode2 enableZoomPIP:(BOOL)mode3 customLensGroup:(id)mode4 trueVideoEnabled:(BOOL)mode5 prefersHDR10BitVideo:(BOOL)mode6 frontRearSimultaneousVideoEnabled:(BOOL)mode7 videoDynamicAspectRatio:(int64_t)mode8 smartFramingFieldOfView:(int64_t)mode9
{
  filtersCopy = filters;
  outputConfigurationCopy = outputConfiguration;
  styleCopy = style;
  stylesCopy = styles;
  groupCopy = group;
  v55.receiver = self;
  v55.super_class = CAMCaptureGraphConfiguration;
  v46 = [(CAMCaptureGraphConfiguration *)&v55 init];
  v47 = v46;
  if (v46)
  {
    v46->_mode = mode;
    v46->_device = device;
    v46->_macroMode = macroMode;
    v46->_videoConfiguration = configuration;
    v46->_mixAudioWithOthers = others;
    v46->_audioConfiguration = audioConfiguration;
    v46->_previewConfiguration = previewConfiguration;
    v46->_previewSampleBufferVideoFormat = format;
    objc_storeStrong(&v46->_previewFilters, filters);
    objc_storeStrong(&v47->_videoThumbnailOutputConfiguration, outputConfiguration);
    v47->_photoEncodingBehavior = behavior;
    v47->_videoEncodingBehavior = encodingBehavior;
    v47->_enableAutoFPSVideo = video;
    v47->_videoHDRSuspended = suspended;
    v47->_aspectRatioCrop = crop;
    v47->_photoQualityPrioritization = prioritization;
    v47->_captureMirrored = mirrored;
    v47->_enableRAWCaptureIfSupported = supported;
    v47->_semanticStyleSupport = support;
    objc_storeStrong(&v47->_previewSemanticStyle, style);
    objc_storeStrong(&v47->_smartStyles, styles);
    v47->_enableContentAwareDistortionCorrection = correction;
    v47->_enableResponsiveShutter = shutter;
    v47->_suspendLivePhotoCapture = capture;
    v47->_videoStabilizationStrength = strength;
    v47->_maximumPhotoResolution = resolution;
    v47->_colorSpace = space;
    v47->_videoBinned = binned;
    v47->_enableDepthSuggestion = suggestion;
    v47->_enableZoomPIP = p;
    objc_storeStrong(&v47->_customLensGroup, group);
    v47->_windNoiseRemovalEnabled = enabled;
    v47->_trueVideoEnabled = videoEnabled;
    v47->_prefersHDR10BitVideo = bitVideo;
    v47->_frontRearSimultaneousVideoEnabled = simultaneousVideoEnabled;
    v47->_videoDynamicAspectRatio = ratio;
    v47->_smartFramingFieldOfView = view;
    v48 = v47;
  }

  return v47;
}

- (int64_t)devicePosition
{
  device = [(CAMCaptureGraphConfiguration *)self device];
  if ((device - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6A800[device - 1];
  }
}

- (int64_t)secondaryDevice:(BOOL *)device
{
  frontRearSimultaneousVideoEnabled = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
  v5 = frontRearSimultaneousVideoEnabled;
  if (frontRearSimultaneousVideoEnabled)
  {
    v6 = +[CAMCaptureCapabilities capabilities];
    if ([v6 isFrontSuperWideSupported])
    {
      v7 = 10;
    }

    else
    {
      v7 = 8;
    }
  }

  else
  {
    v7 = 1;
  }

  *device = v5;
  return v7;
}

- (int64_t)secondaryDeviceVideoConfiguration
{
  v3 = 0;
  [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v3];
  if (v3)
  {
    return 6;
  }

  else
  {
    return 0;
  }
}

- (BOOL)secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate
{
  v10 = 0;
  [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v10];
  result = 0;
  if (v10 == 1)
  {
    videoConfiguration = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
    v5 = 0.0;
    if (videoConfiguration > 8)
    {
      if (videoConfiguration <= 12)
      {
        if ((videoConfiguration - 11) < 2)
        {
          v5 = 25.0;
          goto LABEL_27;
        }

        if (videoConfiguration != 9)
        {
          if (videoConfiguration == 10)
          {
            v5 = 24.0;
          }

LABEL_27:
          secondaryDeviceVideoConfiguration = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
          v8 = 0.0;
          if (secondaryDeviceVideoConfiguration > 8)
          {
            if (secondaryDeviceVideoConfiguration <= 12)
            {
              if ((secondaryDeviceVideoConfiguration - 11) < 2)
              {
                v8 = 25.0;
                return v5 != v8 && v5 != 0.0;
              }

              if (secondaryDeviceVideoConfiguration != 9)
              {
                if (secondaryDeviceVideoConfiguration == 10)
                {
                  v8 = 24.0;
                }

                return v5 != v8 && v5 != 0.0;
              }

              goto LABEL_48;
            }

            if (secondaryDeviceVideoConfiguration == 13)
            {
              goto LABEL_47;
            }

            if (secondaryDeviceVideoConfiguration == 14)
            {
              v9 = 0x4059000000000000;
              goto LABEL_51;
            }

            if (secondaryDeviceVideoConfiguration != 10003)
            {
              return v5 != v8 && v5 != 0.0;
            }
          }

          else
          {
            if (secondaryDeviceVideoConfiguration <= 3)
            {
              if (secondaryDeviceVideoConfiguration != 1)
              {
                if (secondaryDeviceVideoConfiguration != 2)
                {
                  if (secondaryDeviceVideoConfiguration != 3)
                  {
                    return v5 != v8 && v5 != 0.0;
                  }

                  goto LABEL_42;
                }

                goto LABEL_47;
              }

LABEL_48:
              v9 = 0x404E000000000000;
              goto LABEL_51;
            }

            if ((secondaryDeviceVideoConfiguration - 5) >= 3)
            {
              if (secondaryDeviceVideoConfiguration != 4)
              {
                if (secondaryDeviceVideoConfiguration != 8)
                {
                  return v5 != v8 && v5 != 0.0;
                }

LABEL_42:
                v9 = 0x406E000000000000;
LABEL_51:
                v8 = *&v9;
                return v5 != v8 && v5 != 0.0;
              }

LABEL_47:
              v9 = 0x405E000000000000;
              goto LABEL_51;
            }
          }

          v8 = 30.0;
          return v5 != v8 && v5 != 0.0;
        }

        goto LABEL_23;
      }

      if (videoConfiguration == 13)
      {
        goto LABEL_22;
      }

      if (videoConfiguration == 14)
      {
        v6 = 0x4059000000000000;
        goto LABEL_26;
      }

      if (videoConfiguration != 10003)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (videoConfiguration <= 3)
      {
        if (videoConfiguration != 1)
        {
          if (videoConfiguration != 2)
          {
            if (videoConfiguration != 3)
            {
              goto LABEL_27;
            }

            goto LABEL_17;
          }

          goto LABEL_22;
        }

LABEL_23:
        v6 = 0x404E000000000000;
        goto LABEL_26;
      }

      if ((videoConfiguration - 5) >= 3)
      {
        if (videoConfiguration != 4)
        {
          if (videoConfiguration != 8)
          {
            goto LABEL_27;
          }

LABEL_17:
          v6 = 0x406E000000000000;
LABEL_26:
          v5 = *&v6;
          goto LABEL_27;
        }

LABEL_22:
        v6 = 0x405E000000000000;
        goto LABEL_26;
      }
    }

    v5 = 30.0;
    goto LABEL_27;
  }

  return result;
}

- (BOOL)isSecondaryDeviceVideoBinned
{
  v3 = 0;
  [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v3];
  return v3;
}

- (int64_t)secondaryDeviceColorSpace
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isFrontRearSimultaneousVideoFrontCameraHDR10Supported = [v3 isFrontRearSimultaneousVideoFrontCameraHDR10Supported];
  colorSpace = [(CAMCaptureGraphConfiguration *)self colorSpace];
  if (isFrontRearSimultaneousVideoFrontCameraHDR10Supported)
  {
    v6 = colorSpace == 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    colorSpace2 = [(CAMCaptureGraphConfiguration *)self colorSpace];
  }

  else
  {
    colorSpace2 = 0;
  }

  return colorSpace2;
}

- (int64_t)secondaryDeviceVideoStabilizationStrength
{
  v3 = +[CAMCaptureCapabilities capabilities];
  isFrontRearSimultaneousVideoFrontVideoStabilizationSupported = [v3 isFrontRearSimultaneousVideoFrontVideoStabilizationSupported];
  v6 = 0;
  [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v6];
  LOBYTE(self) = v6 & isFrontRearSimultaneousVideoFrontVideoStabilizationSupported;

  return self & 1;
}

- (int64_t)secondaryDeviceVideoDynamicAspectRatio
{
  v11 = 0;
  v3 = [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v11];
  if (v11 != 1)
  {
    return 0;
  }

  v4 = v3;
  v5 = +[CAMCaptureCapabilities capabilities];
  mode = [(CAMCaptureGraphConfiguration *)self mode];
  secondaryDeviceVideoConfiguration = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
  if ((v4 - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A6A800[v4 - 1];
  }

  if ([v5 isDynamicAspectRatioSupportedForMode:mode videoConfiguration:secondaryDeviceVideoConfiguration devicePosition:v8])
  {
    v9 = 2;
  }

  else
  {
    v9 = 0;
  }

  return v9;
}

- (id)shortDescription
{
  v3 = MEMORY[0x1E696AEC0];
  modeDescription = [(CAMCaptureGraphConfiguration *)self modeDescription];
  deviceDescription = [(CAMCaptureGraphConfiguration *)self deviceDescription];
  v6 = [v3 stringWithFormat:@"%@/%@", modeDescription, deviceDescription];

  return v6;
}

- (id)modeDescription
{
  mode = [(CAMCaptureGraphConfiguration *)self mode];
  if (mode > 9)
  {
    return 0;
  }

  else
  {
    return off_1E76FDA00[mode];
  }
}

- (id)deviceDescription
{
  device = [(CAMCaptureGraphConfiguration *)self device];
  if (device > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FDAD8[device];
  }

  v8 = 0;
  v5 = [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v8];
  if (v8 == 1)
  {
    if (v5 > 0xB)
    {
      v6 = 0;
    }

    else
    {
      v6 = off_1E76FDAD8[v5];
    }

    v4 = [(__CFString *)v4 stringByAppendingFormat:@"+%@", v6];
  }

  return v4;
}

- (id)devicePositionDescription
{
  devicePosition = [(CAMCaptureGraphConfiguration *)self devicePosition];
  v3 = @"Back";
  if (devicePosition)
  {
    v3 = 0;
  }

  if (devicePosition == 1)
  {
    v4 = @"Front";
  }

  else
  {
    v4 = v3;
  }

  return v4;
}

void __51__CAMCaptureGraphConfiguration_completeDescription__block_invoke(uint64_t a1, void *a2)
{
  v3 = [a2 name];
  v4 = *(*(a1 + 32) + 8);
  v5 = *(v4 + 40);
  v10 = v3;
  if (v5)
  {
    v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%@%@", v5, v3];;
    v7 = *(*(a1 + 32) + 8);
    v8 = *(v7 + 40);
    *(v7 + 40) = v6;
  }

  else
  {
    v9 = v3;
    v8 = *(v4 + 40);
    *(v4 + 40) = v9;
  }
}

@end