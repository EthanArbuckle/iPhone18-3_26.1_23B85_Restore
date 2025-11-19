@interface CAMCaptureGraphConfiguration
- (BOOL)isSecondaryDeviceVideoBinned;
- (BOOL)secondaryDeviceUsesPrimaryVideoConfigurationForFrameRate;
- (CAMCaptureGraphConfiguration)initWithCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4 macroMode:(int64_t)a5 videoConfiguration:(int64_t)a6 audioConfiguration:(unint64_t)a7 mixAudioWithOthers:(BOOL)a8 windNoiseRemovalEnabled:(BOOL)a9 previewConfiguration:(unint64_t)a10 previewSampleBufferVideoFormat:(int64_t)a11 previewFilters:(id)a12 videoThumbnailOutputConfiguration:(id)a13 photoEncodingBehavior:(int64_t)a14 videoEncodingBehavior:(int64_t)a15 enableAutoFPSVideo:(BOOL)a16 videoHDRSuspended:(BOOL)a17 aspectRatioCrop:(int64_t)a18 photoQualityPrioritization:(int64_t)a19 captureMirrored:(BOOL)a20 enableRAWCaptureIfSupported:(BOOL)a21 semanticStyleSupport:(unint64_t)a22 previewSemanticStyle:(id)a23 smartStyles:(id)a24 enableContentAwareDistortionCorrection:(BOOL)a25 enableResponsiveShutter:(BOOL)a26 suspendLivePhotoCapture:(BOOL)a27 videoStabilizationStrength:(int64_t)a28 maximumPhotoResolution:(int64_t)a29 colorSpace:(int64_t)a30 videoBinned:(BOOL)a31 enableDepthSuggestion:(BOOL)a32 enableZoomPIP:(BOOL)a33 customLensGroup:(id)a34 trueVideoEnabled:(BOOL)a35 prefersHDR10BitVideo:(BOOL)a36 frontRearSimultaneousVideoEnabled:(BOOL)a37 videoDynamicAspectRatio:(int64_t)a38 smartFramingFieldOfView:(int64_t)a39;
- (id)completeDescription;
- (id)deviceDescription;
- (id)devicePositionDescription;
- (id)modeDescription;
- (id)shortDescription;
- (int64_t)devicePosition;
- (int64_t)secondaryDevice:(BOOL *)a3;
- (int64_t)secondaryDeviceColorSpace;
- (int64_t)secondaryDeviceVideoConfiguration;
- (int64_t)secondaryDeviceVideoDynamicAspectRatio;
- (int64_t)secondaryDeviceVideoStabilizationStrength;
@end

@implementation CAMCaptureGraphConfiguration

- (id)completeDescription
{
  v3 = [(CAMCaptureGraphConfiguration *)self mode];
  if (v3 > 9)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FDA00[v3];
  }

  v5 = [(CAMCaptureGraphConfiguration *)self device];
  if (v5 > 0xB)
  {
    v6 = 0;
  }

  else
  {
    v6 = off_1E76FDAD8[v5];
  }

  v7 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
  v8 = 0;
  if (v7 > 9999)
  {
    if (v7 > 10002)
    {
      switch(v7)
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

    else if (v7 == 10000)
    {
      v8 = @"ImagePickerHigh";
    }

    else if (v7 == 10001)
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
    switch(v7)
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

  v9 = [(CAMCaptureGraphConfiguration *)self audioConfiguration];
  if (v9 > 3)
  {
    v69 = 0;
  }

  else
  {
    v69 = off_1E76FDA50[v9];
  }

  v10 = [(CAMCaptureGraphConfiguration *)self previewConfiguration];
  v11 = [MEMORY[0x1E695DF70] arrayWithCapacity:3];
  v12 = v11;
  if (v10)
  {
    [v11 addObject:@"Layer"];
    if ((v10 & 2) == 0)
    {
LABEL_41:
      if ((v10 & 4) == 0)
      {
        goto LABEL_43;
      }

      goto LABEL_42;
    }
  }

  else if ((v10 & 2) == 0)
  {
    goto LABEL_41;
  }

  [v12 addObject:@"VideoDataOutput"];
  if ((v10 & 4) != 0)
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
  v16 = [(CAMCaptureGraphConfiguration *)self colorSpace];
  if (v16)
  {
    if (v16 == 3)
    {
      v17 = @"Log";
    }

    else
    {
      if (v16 != 2)
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
  v21 = [(CAMCaptureGraphConfiguration *)self previewFilters];
  v70[0] = MEMORY[0x1E69E9820];
  v70[1] = 3221225472;
  v70[2] = __51__CAMCaptureGraphConfiguration_completeDescription__block_invoke;
  v70[3] = &unk_1E76FD9E0;
  v70[4] = &v72;
  [v21 enumerateObjectsUsingBlock:v70];
  v66 = v21;
  v22 = MEMORY[0x1E696AD60];
  v23 = [(CAMCaptureGraphConfiguration *)self photoQualityPrioritization];
  if (v23 > 2)
  {
    v24 = 0;
  }

  else
  {
    v24 = off_1E76FDA70[v23];
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
  v27 = [(CAMCaptureGraphConfiguration *)self previewSemanticStyle];

  if (v27)
  {
    v28 = [(CAMCaptureGraphConfiguration *)self previewSemanticStyle];
    [v25 appendFormat:@", PreviewSemanticStyle: %@", v28];
  }

  v29 = [v15 isContentAwareDistortionCorrectionSupportedForMode:{-[CAMCaptureGraphConfiguration mode](self, "mode")}];
  v30 = [(CAMCaptureGraphConfiguration *)self enableContentAwareDistortionCorrection];
  if ((v30 | v29))
  {
    if (v30)
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
    v32 = [(CAMCaptureGraphConfiguration *)self aspectRatioCrop];
    if (v32 > 6)
    {
      v33 = 0;
    }

    else
    {
      v33 = off_1E76FDA88[v32];
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
  v35 = [(CAMCaptureGraphConfiguration *)self videoStabilizationStrength];
  v36 = [(CAMCaptureGraphConfiguration *)self mode];
  v37 = [(CAMCaptureGraphConfiguration *)self device];
  v38 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
  v39 = [(CAMCaptureGraphConfiguration *)self videoEncodingBehavior];
  v40 = [(CAMCaptureGraphConfiguration *)self trueVideoEnabled];
  v41 = [(CAMCaptureGraphConfiguration *)self prefersHDR10BitVideo];
  BYTE2(v64) = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
  BYTE1(v64) = v41;
  LOBYTE(v64) = v40;
  if ([v68 isVideoStabilizationStrength:v35 supportedForMode:v36 device:v37 videoConfiguration:v38 videoEncodingBehavior:v39 outputToExternalStorage:0 trueVideoEnabled:v64 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?])
  {
    v42 = [(CAMCaptureGraphConfiguration *)self videoStabilizationStrength];
    if (v42 > 3)
    {
      v43 = 0;
    }

    else
    {
      v43 = off_1E76FDB38[v42];
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

    v48 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
    v49 = 0;
    if (v48 > 9999)
    {
      if (v48 > 10002)
      {
        switch(v48)
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

      else if (v48 == 10000)
      {
        v49 = @"ImagePickerHigh";
      }

      else if (v48 == 10001)
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
      switch(v48)
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
      v52 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceColorSpace];
      if (v52)
      {
        if (v52 == 3)
        {
          v53 = @"Log";
        }

        else
        {
          if (v52 != 2)
          {
LABEL_176:
            if ([(CAMCaptureGraphConfiguration *)self isSecondaryDeviceVideoBinned])
            {
              [v25 appendFormat:@"_Binned"];
            }

            v54 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoStabilizationStrength];
            v55 = [(CAMCaptureGraphConfiguration *)self mode];
            v56 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
            v57 = [(CAMCaptureGraphConfiguration *)self videoEncodingBehavior];
            v58 = [(CAMCaptureGraphConfiguration *)self trueVideoEnabled];
            v59 = [(CAMCaptureGraphConfiguration *)self prefersHDR10BitVideo];
            BYTE2(v65) = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
            BYTE1(v65) = v59;
            LOBYTE(v65) = v58;
            if ([v68 isVideoStabilizationStrength:v54 supportedForMode:v55 device:v46 videoConfiguration:v56 videoEncodingBehavior:v57 outputToExternalStorage:0 trueVideoEnabled:v65 prefersHDR10BitVideo:? frontRearSimultaneousVideoEnabled:?])
            {
              v60 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoStabilizationStrength];
              if (v60 > 3)
              {
                v61 = 0;
              }

              else
              {
                v61 = off_1E76FDB38[v60];
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

    v50 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
    v51 = 0;
    if (v50 > 8)
    {
      if (v50 <= 12)
      {
        if ((v50 - 11) < 2)
        {
          v51 = 25;
          goto LABEL_168;
        }

        if (v50 != 9)
        {
          if (v50 == 10)
          {
            v51 = 24;
          }

          goto LABEL_168;
        }

        goto LABEL_165;
      }

      if (v50 == 13)
      {
        goto LABEL_164;
      }

      if (v50 == 14)
      {
        v51 = 100;
        goto LABEL_168;
      }

      if (v50 != 10003)
      {
LABEL_168:
        [v25 appendFormat:@"_%dfpsOverride", v51];
        goto LABEL_169;
      }
    }

    else
    {
      if (v50 <= 3)
      {
        if (v50 != 1)
        {
          if (v50 != 2)
          {
            if (v50 != 3)
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

      if ((v50 - 5) >= 3)
      {
        if (v50 == 4)
        {
          goto LABEL_164;
        }

        if (v50 == 8)
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

- (CAMCaptureGraphConfiguration)initWithCaptureMode:(int64_t)a3 captureDevice:(int64_t)a4 macroMode:(int64_t)a5 videoConfiguration:(int64_t)a6 audioConfiguration:(unint64_t)a7 mixAudioWithOthers:(BOOL)a8 windNoiseRemovalEnabled:(BOOL)a9 previewConfiguration:(unint64_t)a10 previewSampleBufferVideoFormat:(int64_t)a11 previewFilters:(id)a12 videoThumbnailOutputConfiguration:(id)a13 photoEncodingBehavior:(int64_t)a14 videoEncodingBehavior:(int64_t)a15 enableAutoFPSVideo:(BOOL)a16 videoHDRSuspended:(BOOL)a17 aspectRatioCrop:(int64_t)a18 photoQualityPrioritization:(int64_t)a19 captureMirrored:(BOOL)a20 enableRAWCaptureIfSupported:(BOOL)a21 semanticStyleSupport:(unint64_t)a22 previewSemanticStyle:(id)a23 smartStyles:(id)a24 enableContentAwareDistortionCorrection:(BOOL)a25 enableResponsiveShutter:(BOOL)a26 suspendLivePhotoCapture:(BOOL)a27 videoStabilizationStrength:(int64_t)a28 maximumPhotoResolution:(int64_t)a29 colorSpace:(int64_t)a30 videoBinned:(BOOL)a31 enableDepthSuggestion:(BOOL)a32 enableZoomPIP:(BOOL)a33 customLensGroup:(id)a34 trueVideoEnabled:(BOOL)a35 prefersHDR10BitVideo:(BOOL)a36 frontRearSimultaneousVideoEnabled:(BOOL)a37 videoDynamicAspectRatio:(int64_t)a38 smartFramingFieldOfView:(int64_t)a39
{
  v41 = a12;
  v42 = a13;
  v43 = a23;
  v44 = a24;
  v45 = a34;
  v55.receiver = self;
  v55.super_class = CAMCaptureGraphConfiguration;
  v46 = [(CAMCaptureGraphConfiguration *)&v55 init];
  v47 = v46;
  if (v46)
  {
    v46->_mode = a3;
    v46->_device = a4;
    v46->_macroMode = a5;
    v46->_videoConfiguration = a6;
    v46->_mixAudioWithOthers = a8;
    v46->_audioConfiguration = a7;
    v46->_previewConfiguration = a10;
    v46->_previewSampleBufferVideoFormat = a11;
    objc_storeStrong(&v46->_previewFilters, a12);
    objc_storeStrong(&v47->_videoThumbnailOutputConfiguration, a13);
    v47->_photoEncodingBehavior = a14;
    v47->_videoEncodingBehavior = a15;
    v47->_enableAutoFPSVideo = a16;
    v47->_videoHDRSuspended = a17;
    v47->_aspectRatioCrop = a18;
    v47->_photoQualityPrioritization = a19;
    v47->_captureMirrored = a20;
    v47->_enableRAWCaptureIfSupported = a21;
    v47->_semanticStyleSupport = a22;
    objc_storeStrong(&v47->_previewSemanticStyle, a23);
    objc_storeStrong(&v47->_smartStyles, a24);
    v47->_enableContentAwareDistortionCorrection = a25;
    v47->_enableResponsiveShutter = a26;
    v47->_suspendLivePhotoCapture = a27;
    v47->_videoStabilizationStrength = a28;
    v47->_maximumPhotoResolution = a29;
    v47->_colorSpace = a30;
    v47->_videoBinned = a31;
    v47->_enableDepthSuggestion = a32;
    v47->_enableZoomPIP = a33;
    objc_storeStrong(&v47->_customLensGroup, a34);
    v47->_windNoiseRemovalEnabled = a9;
    v47->_trueVideoEnabled = a35;
    v47->_prefersHDR10BitVideo = a36;
    v47->_frontRearSimultaneousVideoEnabled = a37;
    v47->_videoDynamicAspectRatio = a38;
    v47->_smartFramingFieldOfView = a39;
    v48 = v47;
  }

  return v47;
}

- (int64_t)devicePosition
{
  v2 = [(CAMCaptureGraphConfiguration *)self device];
  if ((v2 - 1) > 0xA)
  {
    return 0;
  }

  else
  {
    return qword_1A3A6A800[v2 - 1];
  }
}

- (int64_t)secondaryDevice:(BOOL *)a3
{
  v4 = [(CAMCaptureGraphConfiguration *)self frontRearSimultaneousVideoEnabled];
  v5 = v4;
  if (v4)
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

  *a3 = v5;
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
    v4 = [(CAMCaptureGraphConfiguration *)self videoConfiguration];
    v5 = 0.0;
    if (v4 > 8)
    {
      if (v4 <= 12)
      {
        if ((v4 - 11) < 2)
        {
          v5 = 25.0;
          goto LABEL_27;
        }

        if (v4 != 9)
        {
          if (v4 == 10)
          {
            v5 = 24.0;
          }

LABEL_27:
          v7 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
          v8 = 0.0;
          if (v7 > 8)
          {
            if (v7 <= 12)
            {
              if ((v7 - 11) < 2)
              {
                v8 = 25.0;
                return v5 != v8 && v5 != 0.0;
              }

              if (v7 != 9)
              {
                if (v7 == 10)
                {
                  v8 = 24.0;
                }

                return v5 != v8 && v5 != 0.0;
              }

              goto LABEL_48;
            }

            if (v7 == 13)
            {
              goto LABEL_47;
            }

            if (v7 == 14)
            {
              v9 = 0x4059000000000000;
              goto LABEL_51;
            }

            if (v7 != 10003)
            {
              return v5 != v8 && v5 != 0.0;
            }
          }

          else
          {
            if (v7 <= 3)
            {
              if (v7 != 1)
              {
                if (v7 != 2)
                {
                  if (v7 != 3)
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

            if ((v7 - 5) >= 3)
            {
              if (v7 != 4)
              {
                if (v7 != 8)
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

      if (v4 == 13)
      {
        goto LABEL_22;
      }

      if (v4 == 14)
      {
        v6 = 0x4059000000000000;
        goto LABEL_26;
      }

      if (v4 != 10003)
      {
        goto LABEL_27;
      }
    }

    else
    {
      if (v4 <= 3)
      {
        if (v4 != 1)
        {
          if (v4 != 2)
          {
            if (v4 != 3)
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

      if ((v4 - 5) >= 3)
      {
        if (v4 != 4)
        {
          if (v4 != 8)
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
  v4 = [v3 isFrontRearSimultaneousVideoFrontCameraHDR10Supported];
  v5 = [(CAMCaptureGraphConfiguration *)self colorSpace];
  if (v4)
  {
    v6 = v5 == 2;
  }

  else
  {
    v6 = 0;
  }

  if (v6)
  {
    v7 = [(CAMCaptureGraphConfiguration *)self colorSpace];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

- (int64_t)secondaryDeviceVideoStabilizationStrength
{
  v3 = +[CAMCaptureCapabilities capabilities];
  v4 = [v3 isFrontRearSimultaneousVideoFrontVideoStabilizationSupported];
  v6 = 0;
  [(CAMCaptureGraphConfiguration *)self secondaryDevice:&v6];
  LOBYTE(self) = v6 & v4;

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
  v6 = [(CAMCaptureGraphConfiguration *)self mode];
  v7 = [(CAMCaptureGraphConfiguration *)self secondaryDeviceVideoConfiguration];
  if ((v4 - 1) > 0xA)
  {
    v8 = 0;
  }

  else
  {
    v8 = qword_1A3A6A800[v4 - 1];
  }

  if ([v5 isDynamicAspectRatioSupportedForMode:v6 videoConfiguration:v7 devicePosition:v8])
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
  v4 = [(CAMCaptureGraphConfiguration *)self modeDescription];
  v5 = [(CAMCaptureGraphConfiguration *)self deviceDescription];
  v6 = [v3 stringWithFormat:@"%@/%@", v4, v5];

  return v6;
}

- (id)modeDescription
{
  v2 = [(CAMCaptureGraphConfiguration *)self mode];
  if (v2 > 9)
  {
    return 0;
  }

  else
  {
    return off_1E76FDA00[v2];
  }
}

- (id)deviceDescription
{
  v3 = [(CAMCaptureGraphConfiguration *)self device];
  if (v3 > 0xB)
  {
    v4 = 0;
  }

  else
  {
    v4 = off_1E76FDAD8[v3];
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
  v2 = [(CAMCaptureGraphConfiguration *)self devicePosition];
  v3 = @"Back";
  if (v2)
  {
    v3 = 0;
  }

  if (v2 == 1)
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