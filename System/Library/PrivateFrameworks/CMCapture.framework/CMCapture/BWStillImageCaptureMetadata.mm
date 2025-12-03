@interface BWStillImageCaptureMetadata
- (BOOL)isEqual:(id)equal;
- (BWStillImageCaptureMetadata)init;
- (BWStillImageCaptureMetadata)initWithCoder:(id)coder;
- (NSString)semanticStyleSceneTypeAsSmartCameraSceneType;
- (void)calculateSemanticStyleSceneType;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setSmartCamTimestamp:(id *)timestamp;
@end

@implementation BWStillImageCaptureMetadata

- (BWStillImageCaptureMetadata)init
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureMetadata;
  result = [(BWStillImageCaptureMetadata *)&v3 init];
  if (result)
  {
    *&result->_alsLuxLevel = 0x7F7FFFFF7FFFFFFFLL;
  }

  return result;
}

- (BWStillImageCaptureMetadata)initWithCoder:(id)coder
{
  v4 = [(BWStillImageCaptureMetadata *)self init];
  if (v4)
  {
    v4->_snrType = [coder decodeInt32ForKey:@"metadataSNRType"];
    [coder decodeFloatForKey:@"metadataSNR"];
    v4->_snr = v5;
    v4->_alsLuxLevel = [coder decodeInt32ForKey:@"metadataALSLuxLevel"];
    [coder decodeFloatForKey:@"metadataALSRearLuxLevel"];
    v4->_alsRearLuxLevel = v6;
    v4->_deviceType = [coder decodeInt32ForKey:@"deviceType"];
    v4->_devicePosition = [coder decodeInt32ForKey:@"devicePosition"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v4->_slaveFocalLengths = [coder decodeObjectOfClasses:v12 forKey:@"slaveFocalLengths"];
    v4->_slaveLensFNumbers = [coder decodeObjectOfClasses:v12 forKey:@"slaveLensFNumbers"];
    [coder decodeFloatForKey:@"totalZoomFactor"];
    v4->_totalZoomFactor = v13;
    [coder decodeFloatForKey:@"uiZoomFactor"];
    v4->_uiZoomFactor = v14;
    [coder decodeFloatForKey:@"exifFocalLengthMultiplier"];
    v4->_exifFocalLengthMultiplier = v15;
    [coder decodeFloatForKey:@"exifFocalLengthOverride"];
    v4->_exifFocalLengthOverride = v16;
    v4->_fastCapturePrioritizationEnabled = [coder decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_systemPressureLevel = [coder decodeInt32ForKey:@"systemPressureLevel"];
    v4->_cameraControlsStatisticsMaster = [coder decodeInt32ForKey:@"cameraControlsStatisticsMaster"];
    v4->_smartCamVersion = [coder decodeInt32ForKey:@"smartCamVersion"];
    CMTimeMakeFromDictionary(&v18, [coder decodeObjectOfClasses:v12 forKey:@"smartCamTimestamp"]);
    v4->_smartCamTimestamp = v18;
    v4->_smartCamInferences = [coder decodeObjectOfClasses:v12 forKey:@"smartCamInferences"];
    v4->_isPreviewSmartCamInferences = [coder decodeBoolForKey:@"isPreviewSmartCamInferences"];
    v4->_semanticStyleSceneType = [coder decodeInt32ForKey:@"semanticStyleSceneType"];
    v4->_zeroShutterLagFailureReason = [coder decodeInt32ForKey:@"zeroShutterLagFailureReason"];
    v4->_shallowDepthOfFieldEffectSceneStatus = [coder decodeObjectOfClass:objc_opt_class() forKey:@"shallowDepthOfFieldEffectSceneStatus"];
    v4->_previewWhiteBalanceMetadataByPortType = [coder decodeObjectOfClasses:v12 forKey:@"previewWhiteBalanceMetadataByPortType"];
    v4->_streamingTime = [coder decodeInt32ForKey:@"streamingTime"];
    v4->_proxyProcessingError = [coder decodeInt32ForKey:@"proxyProcessingError"];
    v4->_processingError = [coder decodeInt32ForKey:@"processingError"];
    v4->_intelligentDistortionCorrectionEnabled = [coder decodeBoolForKey:@"intelligentDistortionCorrectionEnabled"];
    v4->_geometricDistortionCorrectionEnabled = [coder decodeBoolForKey:@"geometricDistortionCorrectionEnabled"];
    v4->_intelligentDistortionCorrectionVersion = [coder decodeInt32ForKey:@"intelligentDistortionCorrectionVersion"];
    v4->_deepZoomVersion = [coder decodeInt32ForKey:@"deepZoomVersion"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt32:self->_snrType forKey:@"metadataSNRType"];
  *&v5 = self->_snr;
  [coder encodeFloat:@"metadataSNR" forKey:v5];
  [coder encodeInt32:self->_alsLuxLevel forKey:@"metadataALSLuxLevel"];
  *&v6 = self->_alsRearLuxLevel;
  [coder encodeFloat:@"metadataALSRearLuxLevel" forKey:v6];
  [coder encodeInt32:self->_deviceType forKey:@"deviceType"];
  [coder encodeInt32:self->_devicePosition forKey:@"devicePosition"];
  [coder encodeObject:self->_slaveFocalLengths forKey:@"slaveFocalLengths"];
  [coder encodeObject:self->_slaveLensFNumbers forKey:@"slaveLensFNumbers"];
  *&v7 = self->_totalZoomFactor;
  [coder encodeFloat:@"totalZoomFactor" forKey:v7];
  *&v8 = self->_uiZoomFactor;
  [coder encodeFloat:@"uiZoomFactor" forKey:v8];
  *&v9 = self->_exifFocalLengthMultiplier;
  [coder encodeFloat:@"exifFocalLengthMultiplier" forKey:v9];
  *&v10 = self->_exifFocalLengthOverride;
  [coder encodeFloat:@"exifFocalLengthOverride" forKey:v10];
  [coder encodeBool:self->_fastCapturePrioritizationEnabled forKey:@"fastCapturePrioritizationEnabled"];
  [coder encodeInt32:self->_systemPressureLevel forKey:@"systemPressureLevel"];
  [coder encodeInt32:self->_cameraControlsStatisticsMaster forKey:@"cameraControlsStatisticsMaster"];
  [coder encodeInt32:self->_smartCamVersion forKey:@"smartCamVersion"];
  v11 = *MEMORY[0x1E695E480];
  smartCamTimestamp = self->_smartCamTimestamp;
  v12 = CMTimeCopyAsDictionary(&smartCamTimestamp, v11);
  [coder encodeObject:v12 forKey:@"smartCamTimestamp"];

  [coder encodeObject:self->_smartCamInferences forKey:@"smartCamInferences"];
  [coder encodeBool:self->_isPreviewSmartCamInferences forKey:@"isPreviewSmartCamInferences"];
  [coder encodeInt32:self->_semanticStyleSceneType forKey:@"semanticStyleSceneType"];
  [coder encodeInt32:self->_zeroShutterLagFailureReason forKey:@"zeroShutterLagFailureReason"];
  [coder encodeObject:self->_shallowDepthOfFieldEffectSceneStatus forKey:@"shallowDepthOfFieldEffectSceneStatus"];
  [coder encodeObject:self->_previewWhiteBalanceMetadataByPortType forKey:@"previewWhiteBalanceMetadataByPortType"];
  [coder encodeInt32:self->_streamingTime forKey:@"streamingTime"];
  [coder encodeInt32:self->_proxyProcessingError forKey:@"proxyProcessingError"];
  [coder encodeInt32:self->_processingError forKey:@"processingError"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureMetadata;
  [(BWStillImageCaptureMetadata *)&v3 dealloc];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v50 = v6;
    v51 = v5;
    v52 = v3;
    v53 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_30;
    }

    snrType = self->_snrType;
    if (snrType != [equal snrType])
    {
      goto LABEL_30;
    }

    snr = self->_snr;
    [equal snr];
    if (snr != v11)
    {
      goto LABEL_30;
    }

    alsLuxLevel = self->_alsLuxLevel;
    if (alsLuxLevel != [equal alsLuxLevel])
    {
      goto LABEL_30;
    }

    alsRearLuxLevel = self->_alsRearLuxLevel;
    [equal alsRearLuxLevel];
    if (alsRearLuxLevel != v14)
    {
      goto LABEL_30;
    }

    deviceType = self->_deviceType;
    if (deviceType != [equal deviceType])
    {
      goto LABEL_30;
    }

    devicePosition = self->_devicePosition;
    if (devicePosition != [equal devicePosition])
    {
      goto LABEL_30;
    }

    slaveFocalLengths = self->_slaveFocalLengths;
    if (slaveFocalLengths == [equal slaveFocalLengths] || (v18 = -[NSArray isEqual:](self->_slaveFocalLengths, "isEqual:", objc_msgSend(equal, "slaveFocalLengths"))) != 0)
    {
      slaveLensFNumbers = self->_slaveLensFNumbers;
      if (slaveLensFNumbers == [equal slaveLensFNumbers] || (v18 = -[NSArray isEqual:](self->_slaveLensFNumbers, "isEqual:", objc_msgSend(equal, "slaveLensFNumbers"))) != 0)
      {
        totalZoomFactor = self->_totalZoomFactor;
        [equal totalZoomFactor];
        if (totalZoomFactor != v21)
        {
          goto LABEL_30;
        }

        uiZoomFactor = self->_uiZoomFactor;
        [equal uiZoomFactor];
        if (uiZoomFactor != v23)
        {
          goto LABEL_30;
        }

        exifFocalLengthMultiplier = self->_exifFocalLengthMultiplier;
        [equal exifFocalLengthMultiplier];
        if (exifFocalLengthMultiplier != v25)
        {
          goto LABEL_30;
        }

        exifFocalLengthOverride = self->_exifFocalLengthOverride;
        [equal exifFocalLengthOverride];
        if (exifFocalLengthOverride != v27)
        {
          goto LABEL_30;
        }

        fastCapturePrioritizationEnabled = self->_fastCapturePrioritizationEnabled;
        if (fastCapturePrioritizationEnabled != [equal fastCapturePrioritizationEnabled])
        {
          goto LABEL_30;
        }

        intelligentDistortionCorrectionEnabled = self->_intelligentDistortionCorrectionEnabled;
        if (intelligentDistortionCorrectionEnabled != [equal intelligentDistortionCorrectionEnabled])
        {
          goto LABEL_30;
        }

        geometricDistortionCorrectionEnabled = self->_geometricDistortionCorrectionEnabled;
        if (geometricDistortionCorrectionEnabled != [equal geometricDistortionCorrectionEnabled])
        {
          goto LABEL_30;
        }

        intelligentDistortionCorrectionVersion = self->_intelligentDistortionCorrectionVersion;
        if (intelligentDistortionCorrectionVersion != [equal intelligentDistortionCorrectionVersion])
        {
          goto LABEL_30;
        }

        deepZoomVersion = self->_deepZoomVersion;
        if (deepZoomVersion != [equal deepZoomVersion])
        {
          goto LABEL_30;
        }

        systemPressureLevel = self->_systemPressureLevel;
        if (systemPressureLevel != [equal systemPressureLevel])
        {
          goto LABEL_30;
        }

        cameraControlsStatisticsMaster = self->_cameraControlsStatisticsMaster;
        if (cameraControlsStatisticsMaster != [equal cameraControlsStatisticsMaster])
        {
          goto LABEL_30;
        }

        smartCamVersion = self->_smartCamVersion;
        if (smartCamVersion != [equal smartCamVersion])
        {
          goto LABEL_30;
        }

        if (equal)
        {
          [equal smartCamTimestamp];
        }

        else
        {
          memset(&time2, 0, sizeof(time2));
        }

        smartCamTimestamp = self->_smartCamTimestamp;
        if (CMTimeCompare(&smartCamTimestamp, &time2))
        {
          goto LABEL_30;
        }

        smartCamInferences = self->_smartCamInferences;
        if (smartCamInferences == [equal smartCamInferences] || (v18 = -[NSDictionary isEqualToDictionary:](self->_smartCamInferences, "isEqualToDictionary:", objc_msgSend(equal, "smartCamInferences"))) != 0)
        {
          isPreviewSmartCamInferences = self->_isPreviewSmartCamInferences;
          if (isPreviewSmartCamInferences != [equal isPreviewSmartCamInferences])
          {
            goto LABEL_30;
          }

          semanticStyleSceneType = self->_semanticStyleSceneType;
          if (semanticStyleSceneType != [equal semanticStyleSceneType])
          {
            goto LABEL_30;
          }

          zeroShutterLagFailureReason = self->_zeroShutterLagFailureReason;
          if (zeroShutterLagFailureReason != [equal zeroShutterLagFailureReason])
          {
            goto LABEL_30;
          }

          v40 = self->_shallowDepthOfFieldEffectSceneStatus == 0;
          if (v40 == ([equal shallowDepthOfFieldEffectSceneStatus] != 0))
          {
            goto LABEL_30;
          }

          shallowDepthOfFieldEffectSceneStatus = self->_shallowDepthOfFieldEffectSceneStatus;
          if (shallowDepthOfFieldEffectSceneStatus)
          {
            intValue = [(NSNumber *)shallowDepthOfFieldEffectSceneStatus intValue];
            if (intValue != [objc_msgSend(equal "shallowDepthOfFieldEffectSceneStatus")])
            {
              goto LABEL_30;
            }
          }

          previewWhiteBalanceMetadataByPortType = self->_previewWhiteBalanceMetadataByPortType;
          if (previewWhiteBalanceMetadataByPortType == [equal previewWhiteBalanceMetadataByPortType] || (v18 = -[NSDictionary isEqualToDictionary:](self->_previewWhiteBalanceMetadataByPortType, "isEqualToDictionary:", objc_msgSend(equal, "previewWhiteBalanceMetadataByPortType"))) != 0)
          {
            streamingTime = self->_streamingTime;
            if (streamingTime == [equal streamingTime])
            {
              proxyProcessingError = self->_proxyProcessingError;
              if (proxyProcessingError == [equal proxyProcessingError])
              {
                processingError = self->_processingError;
                LOBYTE(v18) = processingError == [equal processingError];
                return v18;
              }
            }

LABEL_30:
            LOBYTE(v18) = 0;
          }
        }
      }
    }
  }

  return v18;
}

- (NSString)semanticStyleSceneTypeAsSmartCameraSceneType
{
  v2 = *(self + 31);
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      v3 = off_1E798C338;
    }

    else
    {
      if (v2 != 3)
      {
        return self;
      }

      v3 = off_1E798C350;
    }
  }

  else if (v2)
  {
    if (v2 != 1)
    {
      return self;
    }

    v3 = off_1E798C318;
  }

  else
  {
    v3 = off_1E798C320;
  }

  return *v3;
}

- (void)calculateSemanticStyleSceneType
{
  smartCamInferences = self->_smartCamInferences;
  if (!smartCamInferences)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D930] reason:@"smartCamInferences cannot be nil when invoking this method" userInfo:0]);
  }

  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 3221225472;
  v7 = __62__BWStillImageCaptureMetadata_calculateSemanticStyleSceneType__block_invoke;
  v8 = &unk_1E798FDC8;
  selfCopy = self;
  [-[NSDictionary valueForKey:](smartCamInferences valueForKey:{*off_1E798C318), "floatValue"}];
  if (v4 <= 0.77)
  {
    if ((v7)(v6, *off_1E798C350) <= 0.88)
    {
      if ((v7)(v6, *off_1E798C320) <= 0.4)
      {
        if ((v7)(v6, *off_1E798C338) <= 0.58)
        {
          return;
        }

        v5 = 2;
      }

      else
      {
        v5 = 0;
      }
    }

    else
    {
      v5 = 3;
    }
  }

  else
  {
    v5 = 1;
  }

  self->_semanticStyleSceneType = v5;
}

uint64_t __62__BWStillImageCaptureMetadata_calculateSemanticStyleSceneType__block_invoke(uint64_t a1, uint64_t a2)
{
  v2 = [*(*(a1 + 32) + 112) valueForKey:a2];

  return [v2 floatValue];
}

- (void)setSmartCamTimestamp:(id *)timestamp
{
  v3 = *&timestamp->var0;
  self->_smartCamTimestamp.epoch = timestamp->var3;
  *&self->_smartCamTimestamp.value = v3;
}

@end