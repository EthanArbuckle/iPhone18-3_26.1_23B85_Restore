@interface FigMomentCaptureSettings
- (BOOL)isEqual:(id)a3;
- (FigMomentCaptureSettings)initWithCoder:(id)a3;
- (FigMomentCaptureSettings)initWithSettingsID:(int64_t)a3 captureRequestIdentifier:(id)a4 userInitiatedCaptureTime:(unint64_t)a5;
- (FigMomentCaptureSettings)initWithStillImageSettings:(id)a3;
- (NSString)captureRequestIdentifier;
- (id)copyWithZone:(_NSZone *)a3;
- (id)description;
- (int64_t)settingsID;
- (unint64_t)userInitiatedCaptureTime;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
@end

@implementation FigMomentCaptureSettings

- (FigMomentCaptureSettings)initWithStillImageSettings:(id)a3
{
  v6.receiver = self;
  v6.super_class = FigMomentCaptureSettings;
  v4 = [(FigMomentCaptureSettings *)&v6 init];
  if (v4)
  {
    v4->_stillImageSettings = a3;
  }

  return v4;
}

- (FigMomentCaptureSettings)initWithSettingsID:(int64_t)a3 captureRequestIdentifier:(id)a4 userInitiatedCaptureTime:(unint64_t)a5
{
  v11.receiver = self;
  v11.super_class = FigMomentCaptureSettings;
  v8 = [(FigMomentCaptureSettings *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_settingsID = a3;
    v8->_captureRequestIdentifier = a4;
    v9->_userInitiatedCaptureTime = a5;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigMomentCaptureSettings;
  [(FigMomentCaptureSettings *)&v3 dealloc];
}

- (FigMomentCaptureSettings)initWithCoder:(id)a3
{
  v5 = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"stillImageSettings"];
  if (v5)
  {
    v6 = [(FigMomentCaptureSettings *)self initWithStillImageSettings:v5];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = -[FigMomentCaptureSettings initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:](self, "initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:", [a3 decodeInt64ForKey:@"settingsID"], objc_msgSend(a3, "decodeObjectOfClass:forKey:", objc_opt_class(), @"captureRequestIdentifier"), objc_msgSend(a3, "decodeInt64ForKey:", @"userInitiatedCaptureTime"));
  if (v6)
  {
    v6->_flashMode = [a3 decodeInt32ForKey:@"flashMode"];
    v6->_autoRedEyeReductionEnabled = [a3 decodeBoolForKey:@"autoRedEyeReductionEnabled"];
    v6->_digitalFlashMode = [a3 decodeInt32ForKey:@"digitalFlashMode"];
    v6->_qualityPrioritization = [a3 decodeInt32ForKey:@"qualityPrioritization"];
    v6->_clientQualityPrioritization = [a3 decodeInt32ForKey:@"clientQualityPrioritization"];
    v6->_HDRMode = [a3 decodeInt32ForKey:@"HDRMode"];
    v6->_autoOriginalPhotoDeliveryEnabled = [a3 decodeBoolForKey:@"autoOriginalPhotoDeliveryEnabled"];
    v6->_autoDeferredProcessingEnabled = [a3 decodeBoolForKey:@"autoDeferredProcessingEnabled"];
    v6->_rawOutputFormat = [a3 decodeInt32ForKey:@"rawOutputFormat"];
    v6->_outputWidth = [a3 decodeInt32ForKey:@"outputWidth"];
    v6->_outputHeight = [a3 decodeInt32ForKey:@"outputHeight"];
    v6->_depthDataDeliveryEnabled = [a3 decodeBoolForKey:@"depthDataDeliveryEnabled"];
LABEL_6:
    v6->_torchMode = [a3 decodeInt32ForKey:@"torchMode"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_stillImageSettings forKey:@"stillImageSettings"];
  [a3 encodeInt64:self->_settingsID forKey:@"settingsID"];
  [a3 encodeObject:self->_captureRequestIdentifier forKey:@"captureRequestIdentifier"];
  [a3 encodeInt64:self->_userInitiatedCaptureTime forKey:@"userInitiatedCaptureTime"];
  [a3 encodeInt32:self->_torchMode forKey:@"torchMode"];
  [a3 encodeInt32:self->_flashMode forKey:@"flashMode"];
  [a3 encodeBool:self->_autoRedEyeReductionEnabled forKey:@"autoRedEyeReductionEnabled"];
  [a3 encodeInt32:self->_digitalFlashMode forKey:@"digitalFlashMode"];
  [a3 encodeInt32:self->_qualityPrioritization forKey:@"qualityPrioritization"];
  [a3 encodeInt32:self->_clientQualityPrioritization forKey:@"clientQualityPrioritization"];
  [a3 encodeInt32:self->_HDRMode forKey:@"HDRMode"];
  [a3 encodeBool:self->_autoOriginalPhotoDeliveryEnabled forKey:@"autoOriginalPhotoDeliveryEnabled"];
  [a3 encodeBool:self->_autoSpatialOverCaptureEnabled forKey:@"autoSpatialOverCaptureEnabled"];
  [a3 encodeBool:self->_autoDeferredProcessingEnabled forKey:@"autoDeferredProcessingEnabled"];
  [a3 encodeInt32:self->_rawOutputFormat forKey:@"rawOutputFormat"];
  [a3 encodeInt32:self->_outputWidth forKey:@"outputWidth"];
  [a3 encodeInt32:self->_outputHeight forKey:@"outputHeight"];
  depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;

  [a3 encodeBool:depthDataDeliveryEnabled forKey:@"depthDataDeliveryEnabled"];
}

- (id)copyWithZone:(_NSZone *)a3
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{a3), "initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:", self->_settingsID, self->_captureRequestIdentifier, self->_userInitiatedCaptureTime}];
  [v4 setTorchMode:self->_torchMode];
  [v4 setFlashMode:self->_flashMode];
  [v4 setAutoRedEyeReductionEnabled:self->_autoRedEyeReductionEnabled];
  [v4 setDigitalFlashMode:self->_digitalFlashMode];
  [v4 setQualityPrioritization:self->_qualityPrioritization];
  [v4 setClientQualityPrioritization:self->_clientQualityPrioritization];
  [v4 setHDRMode:self->_HDRMode];
  [v4 setAutoOriginalPhotoDeliveryEnabled:self->_autoOriginalPhotoDeliveryEnabled];
  [v4 setAutoSpatialOverCaptureEnabled:self->_autoSpatialOverCaptureEnabled];
  [v4 setAutoDeferredProcessingEnabled:self->_autoDeferredProcessingEnabled];
  [v4 setRawOutputFormat:self->_rawOutputFormat];
  [v4 setOutputWidth:self->_outputWidth];
  [v4 setOutputHeight:self->_outputHeight];
  [v4 setDepthDataDeliveryEnabled:self->_depthDataDeliveryEnabled];
  return v4;
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v5) = 1;
  }

  else
  {
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_21;
    }

    v5 = -[FigCaptureStillImageSettings isEqual:](self->_stillImageSettings, "isEqual:", [a3 stillImageSettings]);
    if (!v5)
    {
      return v5;
    }

    settingsID = self->_settingsID;
    if (settingsID != [a3 settingsID])
    {
      goto LABEL_21;
    }

    v5 = -[NSString isEqualToString:](self->_captureRequestIdentifier, "isEqualToString:", [a3 captureRequestIdentifier]);
    if (!v5)
    {
      return v5;
    }

    userInitiatedCaptureTime = self->_userInitiatedCaptureTime;
    if (userInitiatedCaptureTime != [a3 userInitiatedCaptureTime] || (torchMode = self->_torchMode, torchMode != objc_msgSend(a3, "torchMode")) || (flashMode = self->_flashMode, flashMode != objc_msgSend(a3, "flashMode")) || (autoRedEyeReductionEnabled = self->_autoRedEyeReductionEnabled, autoRedEyeReductionEnabled != objc_msgSend(a3, "autoRedEyeReductionEnabled")) || (digitalFlashMode = self->_digitalFlashMode, digitalFlashMode != objc_msgSend(a3, "digitalFlashMode")) || (qualityPrioritization = self->_qualityPrioritization, qualityPrioritization != objc_msgSend(a3, "qualityPrioritization")) || (clientQualityPrioritization = self->_clientQualityPrioritization, clientQualityPrioritization != objc_msgSend(a3, "clientQualityPrioritization")) || (HDRMode = self->_HDRMode, HDRMode != objc_msgSend(a3, "HDRMode")) || (autoOriginalPhotoDeliveryEnabled = self->_autoOriginalPhotoDeliveryEnabled, autoOriginalPhotoDeliveryEnabled != objc_msgSend(a3, "isAutoOriginalPhotoDeliveryEnabled")) || (autoSpatialOverCaptureEnabled = self->_autoSpatialOverCaptureEnabled, autoSpatialOverCaptureEnabled != objc_msgSend(a3, "isAutoSpatialOverCaptureEnabled")) || (autoDeferredProcessingEnabled = self->_autoDeferredProcessingEnabled, autoDeferredProcessingEnabled != objc_msgSend(a3, "isAutoDeferredProcessingEnabled")) || (rawOutputFormat = self->_rawOutputFormat, rawOutputFormat != objc_msgSend(a3, "rawOutputFormat")) || (outputWidth = self->_outputWidth, outputWidth != objc_msgSend(a3, "outputWidth")) || (outputHeight = self->_outputHeight, outputHeight != objc_msgSend(a3, "outputHeight")))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;
    LOBYTE(v5) = depthDataDeliveryEnabled == [a3 depthDataDeliveryEnabled];
  }

  return v5;
}

- (id)description
{
  torchMode = self->_torchMode;
  if (torchMode)
  {
    v16 = [MEMORY[0x1E696AEC0] stringWithFormat:@" TORCH:%d", torchMode];
  }

  else
  {
    v16 = &stru_1F216A3D0;
  }

  if (self->_flashMode)
  {
    v15 = [MEMORY[0x1E696AEC0] stringWithFormat:@" FLASH:%d", self->_flashMode];
  }

  else
  {
    v15 = &stru_1F216A3D0;
  }

  if (self->_digitalFlashMode)
  {
    v4 = [MEMORY[0x1E696AEC0] stringWithFormat:@" DIGITALFLASH:%d", self->_digitalFlashMode];
  }

  else
  {
    v4 = &stru_1F216A3D0;
  }

  v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@" QUAL:%d", self->_qualityPrioritization];
  v6 = [MEMORY[0x1E696AEC0] stringWithFormat:@" CQUAL:%d", self->_clientQualityPrioritization];
  if (self->_HDRMode)
  {
    v7 = [MEMORY[0x1E696AEC0] stringWithFormat:@" HDR:%d", self->_HDRMode];
  }

  else
  {
    v7 = &stru_1F216A3D0;
  }

  autoOriginalPhotoDeliveryEnabled = self->_autoOriginalPhotoDeliveryEnabled;
  autoSpatialOverCaptureEnabled = self->_autoSpatialOverCaptureEnabled;
  v10 = &stru_1F216A3D0;
  if (self->_rawOutputFormat)
  {
    v11 = [MEMORY[0x1E696AEC0] stringWithFormat:@" RAW:%c%c%c%c", HIBYTE(self->_rawOutputFormat), BYTE2(self->_rawOutputFormat), BYTE1(self->_rawOutputFormat), self->_rawOutputFormat];
  }

  else
  {
    v11 = &stru_1F216A3D0;
  }

  if (autoSpatialOverCaptureEnabled)
  {
    v12 = @" OverCapture:1";
  }

  else
  {
    v12 = &stru_1F216A3D0;
  }

  if (autoOriginalPhotoDeliveryEnabled)
  {
    v13 = @" ORIGINAL:1";
  }

  else
  {
    v13 = &stru_1F216A3D0;
  }

  if (self->_depthDataDeliveryEnabled)
  {
    v10 = @" DEPTH:1";
  }

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %p: captureID:%lld userTime:%llu %dx%d %@%@%@%@%@%@%@%@%@%@", objc_opt_class(), self, self->_settingsID, self->_userInitiatedCaptureTime, self->_outputWidth, self->_outputHeight, v16, v15, v4, v5, v6, v7, v13, v12, v11, v10];
}

- (int64_t)settingsID
{
  stillImageSettings = self->_stillImageSettings;
  if (stillImageSettings)
  {
    return [(FigCaptureStillImageSettings *)stillImageSettings settingsID];
  }

  else
  {
    return self->_settingsID;
  }
}

- (NSString)captureRequestIdentifier
{
  stillImageSettings = self->_stillImageSettings;
  if (stillImageSettings)
  {
    return [(FigCaptureStillImageSettings *)stillImageSettings captureRequestIdentifier];
  }

  else
  {
    return self->_captureRequestIdentifier;
  }
}

- (unint64_t)userInitiatedCaptureTime
{
  stillImageSettings = self->_stillImageSettings;
  if (stillImageSettings)
  {
    return [(FigCaptureStillImageSettings *)stillImageSettings stillImageUserInitiatedRequestTime];
  }

  else
  {
    return self->_userInitiatedCaptureTime;
  }
}

@end