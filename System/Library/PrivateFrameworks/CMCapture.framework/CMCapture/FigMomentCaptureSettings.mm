@interface FigMomentCaptureSettings
- (BOOL)isEqual:(id)equal;
- (FigMomentCaptureSettings)initWithCoder:(id)coder;
- (FigMomentCaptureSettings)initWithSettingsID:(int64_t)d captureRequestIdentifier:(id)identifier userInitiatedCaptureTime:(unint64_t)time;
- (FigMomentCaptureSettings)initWithStillImageSettings:(id)settings;
- (NSString)captureRequestIdentifier;
- (id)copyWithZone:(_NSZone *)zone;
- (id)description;
- (int64_t)settingsID;
- (unint64_t)userInitiatedCaptureTime;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
@end

@implementation FigMomentCaptureSettings

- (FigMomentCaptureSettings)initWithStillImageSettings:(id)settings
{
  v6.receiver = self;
  v6.super_class = FigMomentCaptureSettings;
  v4 = [(FigMomentCaptureSettings *)&v6 init];
  if (v4)
  {
    v4->_stillImageSettings = settings;
  }

  return v4;
}

- (FigMomentCaptureSettings)initWithSettingsID:(int64_t)d captureRequestIdentifier:(id)identifier userInitiatedCaptureTime:(unint64_t)time
{
  v11.receiver = self;
  v11.super_class = FigMomentCaptureSettings;
  v8 = [(FigMomentCaptureSettings *)&v11 init];
  v9 = v8;
  if (v8)
  {
    v8->_settingsID = d;
    v8->_captureRequestIdentifier = identifier;
    v9->_userInitiatedCaptureTime = time;
  }

  return v9;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = FigMomentCaptureSettings;
  [(FigMomentCaptureSettings *)&v3 dealloc];
}

- (FigMomentCaptureSettings)initWithCoder:(id)coder
{
  v5 = [coder decodeObjectOfClass:objc_opt_class() forKey:@"stillImageSettings"];
  if (v5)
  {
    v6 = [(FigMomentCaptureSettings *)self initWithStillImageSettings:v5];
    if (!v6)
    {
      return v6;
    }

    goto LABEL_6;
  }

  v6 = -[FigMomentCaptureSettings initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:](self, "initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:", [coder decodeInt64ForKey:@"settingsID"], objc_msgSend(coder, "decodeObjectOfClass:forKey:", objc_opt_class(), @"captureRequestIdentifier"), objc_msgSend(coder, "decodeInt64ForKey:", @"userInitiatedCaptureTime"));
  if (v6)
  {
    v6->_flashMode = [coder decodeInt32ForKey:@"flashMode"];
    v6->_autoRedEyeReductionEnabled = [coder decodeBoolForKey:@"autoRedEyeReductionEnabled"];
    v6->_digitalFlashMode = [coder decodeInt32ForKey:@"digitalFlashMode"];
    v6->_qualityPrioritization = [coder decodeInt32ForKey:@"qualityPrioritization"];
    v6->_clientQualityPrioritization = [coder decodeInt32ForKey:@"clientQualityPrioritization"];
    v6->_HDRMode = [coder decodeInt32ForKey:@"HDRMode"];
    v6->_autoOriginalPhotoDeliveryEnabled = [coder decodeBoolForKey:@"autoOriginalPhotoDeliveryEnabled"];
    v6->_autoDeferredProcessingEnabled = [coder decodeBoolForKey:@"autoDeferredProcessingEnabled"];
    v6->_rawOutputFormat = [coder decodeInt32ForKey:@"rawOutputFormat"];
    v6->_outputWidth = [coder decodeInt32ForKey:@"outputWidth"];
    v6->_outputHeight = [coder decodeInt32ForKey:@"outputHeight"];
    v6->_depthDataDeliveryEnabled = [coder decodeBoolForKey:@"depthDataDeliveryEnabled"];
LABEL_6:
    v6->_torchMode = [coder decodeInt32ForKey:@"torchMode"];
  }

  return v6;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeObject:self->_stillImageSettings forKey:@"stillImageSettings"];
  [coder encodeInt64:self->_settingsID forKey:@"settingsID"];
  [coder encodeObject:self->_captureRequestIdentifier forKey:@"captureRequestIdentifier"];
  [coder encodeInt64:self->_userInitiatedCaptureTime forKey:@"userInitiatedCaptureTime"];
  [coder encodeInt32:self->_torchMode forKey:@"torchMode"];
  [coder encodeInt32:self->_flashMode forKey:@"flashMode"];
  [coder encodeBool:self->_autoRedEyeReductionEnabled forKey:@"autoRedEyeReductionEnabled"];
  [coder encodeInt32:self->_digitalFlashMode forKey:@"digitalFlashMode"];
  [coder encodeInt32:self->_qualityPrioritization forKey:@"qualityPrioritization"];
  [coder encodeInt32:self->_clientQualityPrioritization forKey:@"clientQualityPrioritization"];
  [coder encodeInt32:self->_HDRMode forKey:@"HDRMode"];
  [coder encodeBool:self->_autoOriginalPhotoDeliveryEnabled forKey:@"autoOriginalPhotoDeliveryEnabled"];
  [coder encodeBool:self->_autoSpatialOverCaptureEnabled forKey:@"autoSpatialOverCaptureEnabled"];
  [coder encodeBool:self->_autoDeferredProcessingEnabled forKey:@"autoDeferredProcessingEnabled"];
  [coder encodeInt32:self->_rawOutputFormat forKey:@"rawOutputFormat"];
  [coder encodeInt32:self->_outputWidth forKey:@"outputWidth"];
  [coder encodeInt32:self->_outputHeight forKey:@"outputHeight"];
  depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;

  [coder encodeBool:depthDataDeliveryEnabled forKey:@"depthDataDeliveryEnabled"];
}

- (id)copyWithZone:(_NSZone *)zone
{
  v4 = [objc_msgSend(objc_opt_class() allocWithZone:{zone), "initWithSettingsID:captureRequestIdentifier:userInitiatedCaptureTime:", self->_settingsID, self->_captureRequestIdentifier, self->_userInitiatedCaptureTime}];
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

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
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

    v5 = -[FigCaptureStillImageSettings isEqual:](self->_stillImageSettings, "isEqual:", [equal stillImageSettings]);
    if (!v5)
    {
      return v5;
    }

    settingsID = self->_settingsID;
    if (settingsID != [equal settingsID])
    {
      goto LABEL_21;
    }

    v5 = -[NSString isEqualToString:](self->_captureRequestIdentifier, "isEqualToString:", [equal captureRequestIdentifier]);
    if (!v5)
    {
      return v5;
    }

    userInitiatedCaptureTime = self->_userInitiatedCaptureTime;
    if (userInitiatedCaptureTime != [equal userInitiatedCaptureTime] || (torchMode = self->_torchMode, torchMode != objc_msgSend(equal, "torchMode")) || (flashMode = self->_flashMode, flashMode != objc_msgSend(equal, "flashMode")) || (autoRedEyeReductionEnabled = self->_autoRedEyeReductionEnabled, autoRedEyeReductionEnabled != objc_msgSend(equal, "autoRedEyeReductionEnabled")) || (digitalFlashMode = self->_digitalFlashMode, digitalFlashMode != objc_msgSend(equal, "digitalFlashMode")) || (qualityPrioritization = self->_qualityPrioritization, qualityPrioritization != objc_msgSend(equal, "qualityPrioritization")) || (clientQualityPrioritization = self->_clientQualityPrioritization, clientQualityPrioritization != objc_msgSend(equal, "clientQualityPrioritization")) || (HDRMode = self->_HDRMode, HDRMode != objc_msgSend(equal, "HDRMode")) || (autoOriginalPhotoDeliveryEnabled = self->_autoOriginalPhotoDeliveryEnabled, autoOriginalPhotoDeliveryEnabled != objc_msgSend(equal, "isAutoOriginalPhotoDeliveryEnabled")) || (autoSpatialOverCaptureEnabled = self->_autoSpatialOverCaptureEnabled, autoSpatialOverCaptureEnabled != objc_msgSend(equal, "isAutoSpatialOverCaptureEnabled")) || (autoDeferredProcessingEnabled = self->_autoDeferredProcessingEnabled, autoDeferredProcessingEnabled != objc_msgSend(equal, "isAutoDeferredProcessingEnabled")) || (rawOutputFormat = self->_rawOutputFormat, rawOutputFormat != objc_msgSend(equal, "rawOutputFormat")) || (outputWidth = self->_outputWidth, outputWidth != objc_msgSend(equal, "outputWidth")) || (outputHeight = self->_outputHeight, outputHeight != objc_msgSend(equal, "outputHeight")))
    {
LABEL_21:
      LOBYTE(v5) = 0;
      return v5;
    }

    depthDataDeliveryEnabled = self->_depthDataDeliveryEnabled;
    LOBYTE(v5) = depthDataDeliveryEnabled == [equal depthDataDeliveryEnabled];
  }

  return v5;
}

- (id)description
{
  torchMode = self->_torchMode;
  if (torchMode)
  {
    torchMode = [MEMORY[0x1E696AEC0] stringWithFormat:@" TORCH:%d", torchMode];
  }

  else
  {
    torchMode = &stru_1F216A3D0;
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

  return [MEMORY[0x1E696AEC0] stringWithFormat:@"%@ %p: captureID:%lld userTime:%llu %dx%d %@%@%@%@%@%@%@%@%@%@", objc_opt_class(), self, self->_settingsID, self->_userInitiatedCaptureTime, self->_outputWidth, self->_outputHeight, torchMode, v15, v4, v5, v6, v7, v13, v12, v11, v10];
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