@interface CMContinuityCaptureConfiguration
+ (id)stringForManualFramingDeviceType:(int64_t)a3;
- (CMContinuityCaptureConfiguration)init;
- (CMContinuityCaptureConfiguration)initWithCoder:(id)a3;
- (NSDictionary)centerStageRectOfInterest;
- (id)description;
- (int)maxPhotoQualityPrioritization;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setCenterStageRectOfInterest:(id)a3;
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

- (void)setCenterStageRectOfInterest:(id)a3
{
  v4 = a3;
  os_unfair_lock_lock(&self->_stateLock);
  v5 = [v4 copy];
  centerStageRectOfInterest = self->_centerStageRectOfInterest;
  self->_centerStageRectOfInterest = v5;

  v7 = *(MEMORY[0x277CBF3A0] + 16);
  rect.origin = *MEMORY[0x277CBF3A0];
  rect.size = v7;
  CGRectMakeWithDictionaryRepresentation(v4, &rect);

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
  v24 = [(CMContinuityCaptureConfiguration *)self maxPhotoQualityPrioritization];
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
  v21 = [v37 stringWithFormat:@"%@: Entity:%d SVE:%d PE:%d CS:%d FCST:%lu CSRI:%@ CSFM:%ld FD:%d HBD:%d HFBD:%d AsyncStill:%d MQP:%d SL:%d BR:%d FR:%u MnFR:%u VideoZoomFactor:%.2f Format:%@ DVCM:%u ADM:%u ABS:%.3f, GID:%llx PEA:%f SLI:%f PA[x:%f, y:%f] MFD:%@ FoVTW:%d [%p]", v36, entity, suppressVideoEffects, portraitEffectEnabled, centerStageEnabled, forcefulCenterStageEnablementType, v30, centerStageFramingMode, faceDetectionEnabled, humanBodyDetectionEnabled, humanFullBodyDetectionEnabled, asyncStillCaptureEnabled, v24, studioLightingEnabled, backgroundReplacementEnabled, maxFrameRate, minFrameRate, *&videoZoomFactor, format, deskViewCameraMode, audioDeviceMode, *&audioBlockSize, generationID, *&portraitEffectAperture, *&studioLightingIntensity, *&panningAngleX, *&panningAngleY, v20, self->_centerStageFieldOfViewRestrictedToWide, self];

  return v21;
}

- (void)encodeWithCoder:(id)a3
{
  suppressVideoEffects = self->_suppressVideoEffects;
  v9 = a3;
  [v9 encodeBool:suppressVideoEffects forKey:@"suppressVideoEffects"];
  [v9 encodeBool:self->_portraitEffectEnabled forKey:@"portraitEffectEnabled"];
  [v9 encodeBool:self->_centerStageEnabled forKey:@"centerStageEnabled"];
  [v9 encodeObject:self->_centerStageRectOfInterest forKey:@"centerStageRectOfInterest"];
  [v9 encodeInt64:self->_centerStageFramingMode forKey:@"centerStageFramingMode"];
  [v9 encodeInt32:LODWORD(self->_forcefulCenterStageEnablementType) forKey:@"forcefulCenterStageEnablementType"];
  [v9 encodeBool:self->_faceDetectionEnabled forKey:@"faceDetectionEnabled"];
  [v9 encodeBool:self->_humanBodyDetectionEnabled forKey:@"humanBodyDetectionEnabled"];
  [v9 encodeBool:self->_humanFullBodyDetectionEnabled forKey:@"humanFullBodyDetectionEnabled"];
  [v9 encodeBool:self->_studioLightingEnabled forKey:@"studioLightingEnabled"];
  [v9 encodeBool:self->_reactionEffectsEnabled forKey:@"reactionEffectsEnabled"];
  [v9 encodeBool:self->_backgroundReplacementEnabled forKey:@"backgroundReplacementEnabled"];
  [v9 encodeInt32:self->_maxFrameRate forKey:@"frameRate"];
  [v9 encodeInt32:self->_minFrameRate forKey:@"minFrameRate"];
  [v9 encodeDouble:@"videoZoomFactor" forKey:self->_videoZoomFactor];
  [v9 encodeObject:self->_format forKey:@"format"];
  [v9 encodeInt64:self->_entity forKey:@"entity"];
  [v9 encodeObject:self->_sessionID forKey:@"sessionID"];
  [v9 encodeBool:self->_asyncStillCaptureEnabled forKey:@"asyncStillCaptureEnabled"];
  [v9 encodeObject:self->_asyncStillCaptureConfigs forKey:@"asyncStillCaptureConfigs"];
  [v9 encodeInt32:LODWORD(self->_deskViewCameraMode) forKey:@"deskViewCameraMode"];
  [v9 encodeInt32:self->_audioDeviceMode forKey:@"audioDeviceMode"];
  [v9 encodeDouble:@"audioBlockSize" forKey:self->_audioBlockSize];
  [v9 encodeInt64:self->_generationID forKey:@"generationID"];
  *&v5 = self->_portraitEffectAperture;
  [v9 encodeFloat:@"portraitEffectAperture" forKey:v5];
  *&v6 = self->_studioLightingIntensity;
  [v9 encodeFloat:@"studioLightingIntensity" forKey:v6];
  [v9 encodeBool:self->_reactionEffectGesturesEnabled forKey:@"reactionEffectGesturesEnabled"];
  [v9 encodeBool:self->_reactionEffectSuppressedGesturesEnabled forKey:@"reactionEffectSuppressedGesturesEnabled"];
  [v9 encodeCVPixelBuffer:self->_backgroundReplacementPixelBuffer forKey:@"backgroundReplacementPixelBuffer"];
  panningAngleX = self->_panningAngleX;
  *&panningAngleX = panningAngleX;
  [v9 encodeFloat:@"panningAngleX" forKey:panningAngleX];
  panningAngleY = self->_panningAngleY;
  *&panningAngleY = panningAngleY;
  [v9 encodeFloat:@"panningAngleY" forKey:panningAngleY];
  [v9 encodeInteger:self->_manualFramingDeviceType forKey:@"manualFramingDeviceType"];
  [v9 encodeBool:self->_centerStageFieldOfViewRestrictedToWide forKey:@"centerStageFieldOfViewRestrictedToWide"];
}

- (int)maxPhotoQualityPrioritization
{
  v2 = [(NSDictionary *)self->_asyncStillCaptureConfigs objectForKeyedSubscript:@"MaxPhotoQualityPrioritization"];
  v3 = [v2 intValue];

  return v3;
}

+ (id)stringForManualFramingDeviceType:(int64_t)a3
{
  v3 = @"Unknown Manual Framing device type";
  if (a3 == 2)
  {
    v3 = @"ultra wide";
  }

  if (a3 == 1)
  {
    return @"back wide";
  }

  else
  {
    return v3;
  }
}

- (CMContinuityCaptureConfiguration)initWithCoder:(id)a3
{
  v4 = a3;
  v26.receiver = self;
  v26.super_class = CMContinuityCaptureConfiguration;
  v5 = [(CMContinuityCaptureConfiguration *)&v26 init];
  if (v5)
  {
    v5->_entity = [v4 decodeInt64ForKey:@"entity"];
    v5->_suppressVideoEffects = [v4 decodeBoolForKey:@"suppressVideoEffects"];
    v5->_portraitEffectEnabled = [v4 decodeBoolForKey:@"portraitEffectEnabled"];
    v5->_centerStageEnabled = [v4 decodeBoolForKey:@"centerStageEnabled"];
    v6 = objc_opt_class();
    v7 = [v4 decodeDictionaryWithKeysOfClass:v6 objectsOfClass:objc_opt_class() forKey:@"centerStageRectOfInterest"];
    centerStageRectOfInterest = v5->_centerStageRectOfInterest;
    v5->_centerStageRectOfInterest = v7;

    v5->_centerStageFramingMode = [v4 decodeInt64ForKey:@"centerStageFramingMode"];
    v5->_forcefulCenterStageEnablementType = [v4 decodeInt32ForKey:@"forcefulCenterStageEnablementType"];
    v5->_faceDetectionEnabled = [v4 decodeBoolForKey:@"faceDetectionEnabled"];
    v5->_humanBodyDetectionEnabled = [v4 decodeBoolForKey:@"humanBodyDetectionEnabled"];
    v5->_humanFullBodyDetectionEnabled = [v4 decodeBoolForKey:@"humanFullBodyDetectionEnabled"];
    v5->_studioLightingEnabled = [v4 decodeBoolForKey:@"studioLightingEnabled"];
    v5->_reactionEffectsEnabled = [v4 decodeBoolForKey:@"reactionEffectsEnabled"];
    v5->_backgroundReplacementEnabled = [v4 decodeBoolForKey:@"backgroundReplacementEnabled"];
    v5->_maxFrameRate = [v4 decodeInt32ForKey:@"frameRate"];
    v5->_minFrameRate = [v4 decodeInt32ForKey:@"minFrameRate"];
    v9 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"format"];
    format = v5->_format;
    v5->_format = v9;

    [v4 decodeDoubleForKey:@"videoZoomFactor"];
    v5->_videoZoomFactor = v11;
    v12 = [v4 decodeObjectOfClass:objc_opt_class() forKey:@"sessionID"];
    sessionID = v5->_sessionID;
    v5->_sessionID = v12;

    v5->_asyncStillCaptureEnabled = [v4 decodeBoolForKey:@"asyncStillCaptureEnabled"];
    v14 = objc_opt_class();
    v15 = [v4 decodeDictionaryWithKeysOfClass:v14 objectsOfClass:objc_opt_class() forKey:@"asyncStillCaptureConfigs"];
    asyncStillCaptureConfigs = v5->_asyncStillCaptureConfigs;
    v5->_asyncStillCaptureConfigs = v15;

    v5->_generationID = [v4 decodeInt64ForKey:@"generationID"];
    v5->_deskViewCameraMode = [v4 decodeInt32ForKey:@"deskViewCameraMode"];
    if ([v4 containsValueForKey:@"audioDeviceMode"])
    {
      v17 = [v4 decodeInt32ForKey:@"audioDeviceMode"];
    }

    else
    {
      v17 = 1684434036;
    }

    v5->_audioDeviceMode = v17;
    if ([v4 containsValueForKey:@"audioBlockSize"])
    {
      [v4 decodeDoubleForKey:@"audioBlockSize"];
    }

    else
    {
      v18 = 0x3F847AE147AE147BLL;
    }

    *&v5->_audioBlockSize = v18;
    [v4 decodeFloatForKey:@"portraitEffectAperture"];
    v5->_portraitEffectAperture = v19;
    [v4 decodeFloatForKey:@"studioLightingIntensity"];
    v5->_studioLightingIntensity = v20;
    v5->_reactionEffectGesturesEnabled = [v4 decodeBoolForKey:@"reactionEffectGesturesEnabled"];
    v5->_reactionEffectSuppressedGesturesEnabled = [v4 decodeBoolForKey:@"reactionEffectSuppressedGesturesEnabled"];
    v21 = [v4 decodeCVPixelBufferForKey:@"backgroundReplacementPixelBuffer" expectSourceMedia:1];
    if (v21)
    {
      v21 = CFRetain(v21);
    }

    v5->_backgroundReplacementPixelBuffer = v21;
    [v4 decodeFloatForKey:@"panningAngleX"];
    v5->_panningAngleX = v22;
    [v4 decodeFloatForKey:@"panningAngleY"];
    v5->_panningAngleY = v23;
    v5->_manualFramingDeviceType = [v4 decodeInt32ForKey:@"manualFramingDeviceType"];
    v5->_centerStageFieldOfViewRestrictedToWide = [v4 decodeBoolForKey:@"centerStageFieldOfViewRestrictedToWide"];
    v5->_stateLock._os_unfair_lock_opaque = 0;
    v24 = v5;
  }

  return v5;
}

@end