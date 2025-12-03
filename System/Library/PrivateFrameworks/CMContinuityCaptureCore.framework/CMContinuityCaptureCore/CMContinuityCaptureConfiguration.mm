@interface CMContinuityCaptureConfiguration
+ (id)stringForManualFramingDeviceType:(int64_t)type;
- (CMContinuityCaptureConfiguration)init;
- (CMContinuityCaptureConfiguration)initWithCoder:(id)coder;
- (NSDictionary)centerStageRectOfInterest;
- (id)description;
- (int)maxPhotoQualityPrioritization;
- (void)dealloc;
- (void)encodeWithCoder:(id)coder;
- (void)setCenterStageRectOfInterest:(id)interest;
@end

@implementation CMContinuityCaptureConfiguration

- (CMContinuityCaptureConfiguration)init
{
  v3.receiver = self;
  v3.super_class = CMContinuityCaptureConfiguration;
  result = [(CMContinuityCaptureConfiguration *)&v3 init];
  if (result)
  {
    result->_stateLock._os_unfair_lock_opaque = 0;
    result->_audioBlockSize = 0.01;
  }

  return result;
}

- (void)dealloc
{
  backgroundReplacementPixelBuffer = self->_backgroundReplacementPixelBuffer;
  if (backgroundReplacementPixelBuffer)
  {
    CFRelease(backgroundReplacementPixelBuffer);
    self->_backgroundReplacementPixelBuffer = 0;
  }

  v4.receiver = self;
  v4.super_class = CMContinuityCaptureConfiguration;
  [(CMContinuityCaptureConfiguration *)&v4 dealloc];
}

- (void)setCenterStageRectOfInterest:(id)interest
{
  interestCopy = interest;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [interestCopy copy];
  centerStageRectOfInterest = self->_centerStageRectOfInterest;
  self->_centerStageRectOfInterest = v5;

  v7 = *(MEMORY[0x277CBF3A0] + 16);
  rect.origin = *MEMORY[0x277CBF3A0];
  rect.size = v7;
  CGRectMakeWithDictionaryRepresentation(interestCopy, &rect);

  v8 = [MEMORY[0x277CCACA8] stringWithFormat:@"[x:%.2f, y:%.2f, w:%.2f, h:%.2f]", *&rect.origin.x, *&rect.origin.y, *&rect.size.width, *&rect.size.height];
  centerStageRectOfInterestStr = self->_centerStageRectOfInterestStr;
  self->_centerStageRectOfInterestStr = v8;

  os_unfair_lock_unlock(&self->_stateLock);
}

- (NSDictionary)centerStageRectOfInterest
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSDictionary *)self->_centerStageRectOfInterest copy];
  os_unfair_lock_unlock(&self->_stateLock);

  return v3;
}

- (id)description
{
  os_unfair_lock_lock(&self->_stateLock);
  v3 = [(NSString *)self->_centerStageRectOfInterestStr copy];
  os_unfair_lock_unlock(&self->_stateLock);
  v37 = MEMORY[0x277CCACA8];
  v4 = objc_opt_class();
  v5 = NSStringFromClass(v4);
  entity = self->_entity;
  v36 = v5;
  suppressVideoEffects = self->_suppressVideoEffects;
  portraitEffectEnabled = self->_portraitEffectEnabled;
  centerStageEnabled = self->_centerStageEnabled;
  if (v3)
  {
    v6 = v3;
  }

  else
  {
    v6 = @"default";
  }

  v30 = v6;
  forcefulCenterStageEnablementType = self->_forcefulCenterStageEnablementType;
  faceDetectionEnabled = self->_faceDetectionEnabled;
  centerStageFramingMode = self->_centerStageFramingMode;
  humanBodyDetectionEnabled = self->_humanBodyDetectionEnabled;
  humanFullBodyDetectionEnabled = self->_humanFullBodyDetectionEnabled;
  asyncStillCaptureEnabled = self->_asyncStillCaptureEnabled;
  maxPhotoQualityPrioritization = [(CMContinuityCaptureConfiguration *)self maxPhotoQualityPrioritization];
  studioLightingEnabled = self->_studioLightingEnabled;
  backgroundReplacementEnabled = self->_backgroundReplacementEnabled;
  videoZoomFactor = self->_videoZoomFactor;
  format = self->_format;
  deskViewCameraMode = self->_deskViewCameraMode;
  generationID = self->_generationID;
  portraitEffectAperture = self->_portraitEffectAperture;
  studioLightingIntensity = self->_studioLightingIntensity;
  audioBlockSize = self->_audioBlockSize;
  panningAngleX = self->_panningAngleX;
  panningAngleY = self->_panningAngleY;
  maxFrameRate = self->_maxFrameRate;
  minFrameRate = self->_minFrameRate;
  audioDeviceMode = self->_audioDeviceMode;
  v20 = [CMContinuityCaptureConfiguration stringForManualFramingDeviceType:self->_manualFramingDeviceType];
  v21 = [v37 stringWithFormat:@"%@: Entity:%d SVE:%d PE:%d CS:%d FCST:%lu CSRI:%@ CSFM:%ld FD:%d HBD:%d HFBD:%d AsyncStill:%d MQP:%d SL:%d BR:%d FR:%u MnFR:%u VideoZoomFactor:%.2f Format:%@ DVCM:%u ADM:%u ABS:%.3f, GID:%llx PEA:%f SLI:%f PA[x:%f, y:%f] MFD:%@ FoVTW:%d [%p]", v36, entity, suppressVideoEffects, portraitEffectEnabled, centerStageEnabled, forcefulCenterStageEnablementType, v30, centerStageFramingMode, faceDetectionEnabled, humanBodyDetectionEnabled, humanFullBodyDetectionEnabled, asyncStillCaptureEnabled, maxPhotoQualityPrioritization, studioLightingEnabled, backgroundReplacementEnabled, maxFrameRate, minFrameRate, *&videoZoomFactor, format, deskViewCameraMode, audioDeviceMode, *&audioBlockSize, generationID, *&portraitEffectAperture, *&studioLightingIntensity, *&panningAngleX, *&panningAngleY, v20, self->_centerStageFieldOfViewRestrictedToWide, self];

  return v21;
}

- (void)encodeWithCoder:(id)coder
{
  suppressVideoEffects = self->_suppressVideoEffects;
  coderCopy = coder;
  [coderCopy encodeBool:suppressVideoEffects forKey:@"suppressVideoEffects"];
  [coderCopy encodeBool:self->_portraitEffectEnabled forKey:@"portraitEffectEnabled"];
  [coderCopy encodeBool:self->_centerStageEnabled forKey:@"centerStageEnabled"];
  [coderCopy encodeObject:self->_centerStageRectOfInterest forKey:@"centerStageRectOfInterest"];
  [coderCopy encodeInt64:self->_centerStageFramingMode forKey:@"centerStageFramingMode"];
  [coderCopy encodeInt32:LODWORD(self->_forcefulCenterStageEnablementType) forKey:@"forcefulCenterStageEnablementType"];
  [coderCopy encodeBool:self->_faceDetectionEnabled forKey:@"faceDetectionEnabled"];
  [coderCopy encodeBool:self->_humanBodyDetectionEnabled forKey:@"humanBodyDetectionEnabled"];
  [coderCopy encodeBool:self->_humanFullBodyDetectionEnabled forKey:@"humanFullBodyDetectionEnabled"];
  [coderCopy encodeBool:self->_studioLightingEnabled forKey:@"studioLightingEnabled"];
  [coderCopy encodeBool:self->_reactionEffectsEnabled forKey:@"reactionEffectsEnabled"];
  [coderCopy encodeBool:self->_backgroundReplacementEnabled forKey:@"backgroundReplacementEnabled"];
  [coderCopy encodeInt32:self->_maxFrameRate forKey:@"frameRate"];
  [coderCopy encodeInt32:self->_minFrameRate forKey:@"minFrameRate"];
  [coderCopy encodeDouble:@"videoZoomFactor" forKey:self->_videoZoomFactor];
  [coderCopy encodeObject:self->_format forKey:@"format"];
  [coderCopy encodeInt64:self->_entity forKey:@"entity"];
  [coderCopy encodeObject:self->_sessionID forKey:@"sessionID"];
  [coderCopy encodeBool:self->_asyncStillCaptureEnabled forKey:@"asyncStillCaptureEnabled"];
  [coderCopy encodeObject:self->_asyncStillCaptureConfigs forKey:@"asyncStillCaptureConfigs"];
  [coderCopy encodeInt32:LODWORD(self->_deskViewCameraMode) forKey:@"deskViewCameraMode"];
  [coderCopy encodeInt32:self->_audioDeviceMode forKey:@"audioDeviceMode"];
  [coderCopy encodeDouble:@"audioBlockSize" forKey:self->_audioBlockSize];
  [coderCopy encodeInt64:self->_generationID forKey:@"generationID"];
  *&v5 = self->_portraitEffectAperture;
  [coderCopy encodeFloat:@"portraitEffectAperture" forKey:v5];
  *&v6 = self->_studioLightingIntensity;
  [coderCopy encodeFloat:@"studioLightingIntensity" forKey:v6];
  [coderCopy encodeBool:self->_reactionEffectGesturesEnabled forKey:@"reactionEffectGesturesEnabled"];
  [coderCopy encodeBool:self->_reactionEffectSuppressedGesturesEnabled forKey:@"reactionEffectSuppressedGesturesEnabled"];
  [coderCopy encodeCVPixelBuffer:self->_backgroundReplacementPixelBuffer forKey:@"backgroundReplacementPixelBuffer"];
  panningAngleX = self->_panningAngleX;
  *&panningAngleX = panningAngleX;
  [coderCopy encodeFloat:@"panningAngleX" forKey:panningAngleX];
  panningAngleY = self->_panningAngleY;
  *&panningAngleY = panningAngleY;
  [coderCopy encodeFloat:@"panningAngleY" forKey:panningAngleY];
  [coderCopy encodeInteger:self->_manualFramingDeviceType forKey:@"manualFramingDeviceType"];
  [coderCopy encodeBool:self->_centerStageFieldOfViewRestrictedToWide forKey:@"centerStageFieldOfViewRestrictedToWide"];
}

- (int)maxPhotoQualityPrioritization
{
  v2 = [(NSDictionary *)self->_asyncStillCaptureConfigs objectForKeyedSubscript:@"MaxPhotoQualityPrioritization"];
  intValue = [v2 intValue];

  return intValue;
}

+ (id)stringForManualFramingDeviceType:(int64_t)type
{
  v3 = @"Unknown Manual Framing device type";
  if (type == 2)
  {
    v3 = @"ultra wide";
  }

  if (type == 1)
  {
    return @"back wide";
  }

  else
  {
    return v3;
  }
}

- (CMContinuityCaptureConfiguration)initWithCoder:(id)coder
{
  coderCopy = coder;
  v26.receiver = self;
  v26.super_class = CMContinuityCaptureConfiguration;
  v5 = [(CMContinuityCaptureConfiguration *)&v26 init];
  if (v5)
  {
    v5->_entity = [coderCopy decodeInt64ForKey:@"entity"];
    v5->_suppressVideoEffects = [coderCopy decodeBoolForKey:@"suppressVideoEffects"];
    v5->_portraitEffectEnabled = [coderCopy decodeBoolForKey:@"portraitEffectEnabled"];
    v5->_centerStageEnabled = [coderCopy decodeBoolForKey:@"centerStageEnabled"];
    v6 = objc_opt_class();
    v7 = [coderCopy decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"centerStageRectOfInterest"];
    centerStageRectOfInterest = v5->_centerStageRectOfInterest;
    v5->_centerStageRectOfInterest = v7;

    v5->_centerStageFramingMode = [coderCopy decodeInt64ForKey:@"centerStageFramingMode"];
    v5->_forcefulCenterStageEnablementType = [coderCopy decodeInt32ForKey:@"forcefulCenterStageEnablementType"];
    v5->_faceDetectionEnabled = [coderCopy decodeBoolForKey:@"faceDetectionEnabled"];
    v5->_humanBodyDetectionEnabled = [coderCopy decodeBoolForKey:@"humanBodyDetectionEnabled"];
    v5->_humanFullBodyDetectionEnabled = [coderCopy decodeBoolForKey:@"humanFullBodyDetectionEnabled"];
    v5->_studioLightingEnabled = [coderCopy decodeBoolForKey:@"studioLightingEnabled"];
    v5->_reactionEffectsEnabled = [coderCopy decodeBoolForKey:@"reactionEffectsEnabled"];
    v5->_backgroundReplacementEnabled = [coderCopy decodeBoolForKey:@"backgroundReplacementEnabled"];
    v5->_maxFrameRate = [coderCopy decodeInt32ForKey:@"frameRate"];
    v5->_minFrameRate = [coderCopy decodeInt32ForKey:@"minFrameRate"];
    v9 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    format = v5->_format;
    v5->_format = v9;

    [coderCopy decodeDoubleForKey:@"videoZoomFactor"];
    v5->_videoZoomFactor = v11;
    v12 = [coderCopy decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v12;

    v5->_asyncStillCaptureEnabled = [coderCopy decodeBoolForKey:@"asyncStillCaptureEnabled"];
    v14 = objc_opt_class();
    v15 = [coderCopy decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"asyncStillCaptureConfigs"];
    asyncStillCaptureConfigs = v5->_asyncStillCaptureConfigs;
    v5->_asyncStillCaptureConfigs = v15;

    v5->_generationID = [coderCopy decodeInt64ForKey:@"generationID"];
    v5->_deskViewCameraMode = [coderCopy decodeInt32ForKey:@"deskViewCameraMode"];
    if ([coderCopy containsValueForKey:@"audioDeviceMode"])
    {
      v17 = [coderCopy decodeInt32ForKey:@"audioDeviceMode"];
    }

    else
    {
      v17 = 1684434036;
    }

    v5->_audioDeviceMode = v17;
    if ([coderCopy containsValueForKey:@"audioBlockSize"])
    {
      [coderCopy decodeDoubleForKey:@"audioBlockSize"];
    }

    else
    {
      v18 = 0x3F847AE147AE147BLL;
    }

    *&v5->_audioBlockSize = v18;
    [coderCopy decodeFloatForKey:@"portraitEffectAperture"];
    v5->_portraitEffectAperture = v19;
    [coderCopy decodeFloatForKey:@"studioLightingIntensity"];
    v5->_studioLightingIntensity = v20;
    v5->_reactionEffectGesturesEnabled = [coderCopy decodeBoolForKey:@"reactionEffectGesturesEnabled"];
    v5->_reactionEffectSuppressedGesturesEnabled = [coderCopy decodeBoolForKey:@"reactionEffectSuppressedGesturesEnabled"];
    v21 = [coderCopy decodeCVPixelBufferForKey:@"backgroundReplacementPixelBuffer" expectSourceMedia:1];
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    v5->_backgroundReplacementPixelBuffer = v21;
    [coderCopy decodeFloatForKey:@"panningAngleX"];
    v5->_panningAngleX = v22;
    [coderCopy decodeFloatForKey:@"panningAngleY"];
    v5->_panningAngleY = v23;
    v5->_manualFramingDeviceType = [coderCopy decodeInt32ForKey:@"manualFramingDeviceType"];
    v5->_centerStageFieldOfViewRestrictedToWide = [coderCopy decodeBoolForKey:@"centerStageFieldOfViewRestrictedToWide"];
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v24 = v5;
  }

  return v5;
}

@end