@interface BWStillImageCaptureMetadata
- (BOOL)isEqual:(id)a3;
- (BWStillImageCaptureMetadata)init;
- (BWStillImageCaptureMetadata)initWithCoder:(id)a3;
- (NSString)semanticStyleSceneTypeAsSmartCameraSceneType;
- (void)calculateSemanticStyleSceneType;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setSmartCamTimestamp:(id *)a3;
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

- (BWStillImageCaptureMetadata)initWithCoder:(id)a3
{
  v4 = [(BWStillImageCaptureMetadata *)self init];
  if (v4)
  {
    v4->_snrType = [a3 decodeInt32ForKey:@"metadataSNRType"];
    [a3 decodeFloatForKey:@"metadataSNR"];
    v4->_snr = v5;
    v4->_alsLuxLevel = [a3 decodeInt32ForKey:@"metadataALSLuxLevel"];
    [a3 decodeFloatForKey:@"metadataALSRearLuxLevel"];
    v4->_alsRearLuxLevel = v6;
    v4->_deviceType = [a3 decodeInt32ForKey:@"deviceType"];
    v4->_devicePosition = [a3 decodeInt32ForKey:@"devicePosition"];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = objc_opt_class();
    v11 = objc_opt_class();
    v12 = [v7 setWithObjects:{v8, v9, v10, v11, objc_opt_class(), 0}];
    v4->_slaveFocalLengths = [a3 decodeObjectOfClasses:v12 forKey:@"slaveFocalLengths"];
    v4->_slaveLensFNumbers = [a3 decodeObjectOfClasses:v12 forKey:@"slaveLensFNumbers"];
    [a3 decodeFloatForKey:@"totalZoomFactor"];
    v4->_totalZoomFactor = v13;
    [a3 decodeFloatForKey:@"uiZoomFactor"];
    v4->_uiZoomFactor = v14;
    [a3 decodeFloatForKey:@"exifFocalLengthMultiplier"];
    v4->_exifFocalLengthMultiplier = v15;
    [a3 decodeFloatForKey:@"exifFocalLengthOverride"];
    v4->_exifFocalLengthOverride = v16;
    v4->_fastCapturePrioritizationEnabled = [a3 decodeBoolForKey:@"fastCapturePrioritizationEnabled"];
    v4->_systemPressureLevel = [a3 decodeInt32ForKey:@"systemPressureLevel"];
    v4->_cameraControlsStatisticsMaster = [a3 decodeInt32ForKey:@"cameraControlsStatisticsMaster"];
    v4->_smartCamVersion = [a3 decodeInt32ForKey:@"smartCamVersion"];
    CMTimeMakeFromDictionary(&v18, [a3 decodeObjectOfClasses:v12 forKey:@"smartCamTimestamp"]);
    v4->_smartCamTimestamp = v18;
    v4->_smartCamInferences = [a3 decodeObjectOfClasses:v12 forKey:@"smartCamInferences"];
    v4->_isPreviewSmartCamInferences = [a3 decodeBoolForKey:@"isPreviewSmartCamInferences"];
    v4->_semanticStyleSceneType = [a3 decodeInt32ForKey:@"semanticStyleSceneType"];
    v4->_zeroShutterLagFailureReason = [a3 decodeInt32ForKey:@"zeroShutterLagFailureReason"];
    v4->_shallowDepthOfFieldEffectSceneStatus = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"shallowDepthOfFieldEffectSceneStatus"];
    v4->_previewWhiteBalanceMetadataByPortType = [a3 decodeObjectOfClasses:v12 forKey:@"previewWhiteBalanceMetadataByPortType"];
    v4->_streamingTime = [a3 decodeInt32ForKey:@"streamingTime"];
    v4->_proxyProcessingError = [a3 decodeInt32ForKey:@"proxyProcessingError"];
    v4->_processingError = [a3 decodeInt32ForKey:@"processingError"];
    v4->_intelligentDistortionCorrectionEnabled = [a3 decodeBoolForKey:@"intelligentDistortionCorrectionEnabled"];
    v4->_geometricDistortionCorrectionEnabled = [a3 decodeBoolForKey:@"geometricDistortionCorrectionEnabled"];
    v4->_intelligentDistortionCorrectionVersion = [a3 decodeInt32ForKey:@"intelligentDistortionCorrectionVersion"];
    v4->_deepZoomVersion = [a3 decodeInt32ForKey:@"deepZoomVersion"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt32:self->_snrType forKey:@"metadataSNRType"];
  *&v5 = self->_snr;
  [a3 encodeFloat:@"metadataSNR" forKey:v5];
  [a3 encodeInt32:self->_alsLuxLevel forKey:@"metadataALSLuxLevel"];
  *&v6 = self->_alsRearLuxLevel;
  [a3 encodeFloat:@"metadataALSRearLuxLevel" forKey:v6];
  [a3 encodeInt32:self->_deviceType forKey:@"deviceType"];
  [a3 encodeInt32:self->_devicePosition forKey:@"devicePosition"];
  [a3 encodeObject:self->_slaveFocalLengths forKey:@"slaveFocalLengths"];
  [a3 encodeObject:self->_slaveLensFNumbers forKey:@"slaveLensFNumbers"];
  *&v7 = self->_totalZoomFactor;
  [a3 encodeFloat:@"totalZoomFactor" forKey:v7];
  *&v8 = self->_uiZoomFactor;
  [a3 encodeFloat:@"uiZoomFactor" forKey:v8];
  *&v9 = self->_exifFocalLengthMultiplier;
  [a3 encodeFloat:@"exifFocalLengthMultiplier" forKey:v9];
  *&v10 = self->_exifFocalLengthOverride;
  [a3 encodeFloat:@"exifFocalLengthOverride" forKey:v10];
  [a3 encodeBool:self->_fastCapturePrioritizationEnabled forKey:@"fastCapturePrioritizationEnabled"];
  [a3 encodeInt32:self->_systemPressureLevel forKey:@"systemPressureLevel"];
  [a3 encodeInt32:self->_cameraControlsStatisticsMaster forKey:@"cameraControlsStatisticsMaster"];
  [a3 encodeInt32:self->_smartCamVersion forKey:@"smartCamVersion"];
  v11 = *MEMORY[0x1E695E480];
  smartCamTimestamp = self->_smartCamTimestamp;
  v12 = CMTimeCopyAsDictionary(&smartCamTimestamp, v11);
  [a3 encodeObject:v12 forKey:@"smartCamTimestamp"];

  [a3 encodeObject:self->_smartCamInferences forKey:@"smartCamInferences"];
  [a3 encodeBool:self->_isPreviewSmartCamInferences forKey:@"isPreviewSmartCamInferences"];
  [a3 encodeInt32:self->_semanticStyleSceneType forKey:@"semanticStyleSceneType"];
  [a3 encodeInt32:self->_zeroShutterLagFailureReason forKey:@"zeroShutterLagFailureReason"];
  [a3 encodeObject:self->_shallowDepthOfFieldEffectSceneStatus forKey:@"shallowDepthOfFieldEffectSceneStatus"];
  [a3 encodeObject:self->_previewWhiteBalanceMetadataByPortType forKey:@"previewWhiteBalanceMetadataByPortType"];
  [a3 encodeInt32:self->_streamingTime forKey:@"streamingTime"];
  [a3 encodeInt32:self->_proxyProcessingError forKey:@"proxyProcessingError"];
  [a3 encodeInt32:self->_processingError forKey:@"processingError"];
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureMetadata;
  [(BWStillImageCaptureMetadata *)&v3 dealloc];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
    if (snrType != [a3 snrType])
    {
      goto LABEL_30;
    }

    snr = self->_snr;
    [a3 snr];
    if (snr != v11)
    {
      goto LABEL_30;
    }

    alsLuxLevel = self->_alsLuxLevel;
    if (alsLuxLevel != [a3 alsLuxLevel])
    {
      goto LABEL_30;
    }

    alsRearLuxLevel = self->_alsRearLuxLevel;
    [a3 alsRearLuxLevel];
    if (alsRearLuxLevel != v14)
    {
      goto LABEL_30;
    }

    deviceType = self->_deviceType;
    if (deviceType != [a3 deviceType])
    {
      goto LABEL_30;
    }

    devicePosition = self->_devicePosition;
    if (devicePosition != [a3 devicePosition])
    {
      goto LABEL_30;
    }

    slaveFocalLengths = self->_slaveFocalLengths;
    if (slaveFocalLengths == [a3 slaveFocalLengths] || (v18 = -[NSArray isEqual:](self->_slaveFocalLengths, "isEqual:", objc_msgSend(a3, "slaveFocalLengths"))) != 0)
    {
      slaveLensFNumbers = self->_slaveLensFNumbers;
      if (slaveLensFNumbers == [a3 slaveLensFNumbers] || (v18 = -[NSArray isEqual:](self->_slaveLensFNumbers, "isEqual:", objc_msgSend(a3, "slaveLensFNumbers"))) != 0)
      {
        totalZoomFactor = self->_totalZoomFactor;
        [a3 totalZoomFactor];
        if (totalZoomFactor != v21)
        {
          goto LABEL_30;
        }

        uiZoomFactor = self->_uiZoomFactor;
        [a3 uiZoomFactor];
        if (uiZoomFactor != v23)
        {
          goto LABEL_30;
        }

        exifFocalLengthMultiplier = self->_exifFocalLengthMultiplier;
        [a3 exifFocalLengthMultiplier];
        if (exifFocalLengthMultiplier != v25)
        {
          goto LABEL_30;
        }

        exifFocalLengthOverride = self->_exifFocalLengthOverride;
        [a3 exifFocalLengthOverride];
        if (exifFocalLengthOverride != v27)
        {
          goto LABEL_30;
        }

        fastCapturePrioritizationEnabled = self->_fastCapturePrioritizationEnabled;
        if (fastCapturePrioritizationEnabled != [a3 fastCapturePrioritizationEnabled])
        {
          goto LABEL_30;
        }

        intelligentDistortionCorrectionEnabled = self->_intelligentDistortionCorrectionEnabled;
        if (intelligentDistortionCorrectionEnabled != [a3 intelligentDistortionCorrectionEnabled])
        {
          goto LABEL_30;
        }

        geometricDistortionCorrectionEnabled = self->_geometricDistortionCorrectionEnabled;
        if (geometricDistortionCorrectionEnabled != [a3 geometricDistortionCorrectionEnabled])
        {
          goto LABEL_30;
        }

        intelligentDistortionCorrectionVersion = self->_intelligentDistortionCorrectionVersion;
        if (intelligentDistortionCorrectionVersion != [a3 intelligentDistortionCorrectionVersion])
        {
          goto LABEL_30;
        }

        deepZoomVersion = self->_deepZoomVersion;
        if (deepZoomVersion != [a3 deepZoomVersion])
        {
          goto LABEL_30;
        }

        systemPressureLevel = self->_systemPressureLevel;
        if (systemPressureLevel != [a3 systemPressureLevel])
        {
          goto LABEL_30;
        }

        cameraControlsStatisticsMaster = self->_cameraControlsStatisticsMaster;
        if (cameraControlsStatisticsMaster != [a3 cameraControlsStatisticsMaster])
        {
          goto LABEL_30;
        }

        smartCamVersion = self->_smartCamVersion;
        if (smartCamVersion != [a3 smartCamVersion])
        {
          goto LABEL_30;
        }

        if (a3)
        {
          [a3 smartCamTimestamp];
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
        if (smartCamInferences == [a3 smartCamInferences] || (v18 = -[NSDictionary isEqualToDictionary:](self->_smartCamInferences, "isEqualToDictionary:", objc_msgSend(a3, "smartCamInferences"))) != 0)
        {
          isPreviewSmartCamInferences = self->_isPreviewSmartCamInferences;
          if (isPreviewSmartCamInferences != [a3 isPreviewSmartCamInferences])
          {
            goto LABEL_30;
          }

          semanticStyleSceneType = self->_semanticStyleSceneType;
          if (semanticStyleSceneType != [a3 semanticStyleSceneType])
          {
            goto LABEL_30;
          }

          zeroShutterLagFailureReason = self->_zeroShutterLagFailureReason;
          if (zeroShutterLagFailureReason != [a3 zeroShutterLagFailureReason])
          {
            goto LABEL_30;
          }

          v40 = self->_shallowDepthOfFieldEffectSceneStatus == 0;
          if (v40 == ([a3 shallowDepthOfFieldEffectSceneStatus] != 0))
          {
            goto LABEL_30;
          }

          shallowDepthOfFieldEffectSceneStatus = self->_shallowDepthOfFieldEffectSceneStatus;
          if (shallowDepthOfFieldEffectSceneStatus)
          {
            v42 = [(NSNumber *)shallowDepthOfFieldEffectSceneStatus intValue];
            if (v42 != [objc_msgSend(a3 "shallowDepthOfFieldEffectSceneStatus")])
            {
              goto LABEL_30;
            }
          }

          previewWhiteBalanceMetadataByPortType = self->_previewWhiteBalanceMetadataByPortType;
          if (previewWhiteBalanceMetadataByPortType == [a3 previewWhiteBalanceMetadataByPortType] || (v18 = -[NSDictionary isEqualToDictionary:](self->_previewWhiteBalanceMetadataByPortType, "isEqualToDictionary:", objc_msgSend(a3, "previewWhiteBalanceMetadataByPortType"))) != 0)
          {
            streamingTime = self->_streamingTime;
            if (streamingTime == [a3 streamingTime])
            {
              proxyProcessingError = self->_proxyProcessingError;
              if (proxyProcessingError == [a3 proxyProcessingError])
              {
                processingError = self->_processingError;
                LOBYTE(v18) = processingError == [a3 processingError];
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
  v9 = self;
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

- (void)setSmartCamTimestamp:(id *)a3
{
  v3 = *&a3->var0;
  self->_smartCamTimestamp.epoch = a3->var3;
  *&self->_smartCamTimestamp.value = v3;
}

@end