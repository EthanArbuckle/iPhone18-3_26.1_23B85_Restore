@interface BWStillImageCaptureSettings
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTimeMachinePTS;
- (BOOL)expectReferenceFrameBracketedCaptureSequenceNumber;
- (BOOL)isEqual:(id)equal;
- (BWStillImageCaptureSettings)initWithCoder:(id)coder;
- (BWStillImageCaptureSettings)initWithSettingsID:(int64_t)d captureType:(int)type captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags frameStatisticsByPortType:(id)portType deliverOriginalImage:(BOOL)image deliverSushiRaw:(BOOL)raw captureStreamSettings:(id)self0;
- (NSArray)portTypes;
- (NSArray)secondaryPortTypes;
- (id)captureStreamSettingsForPortType:(id)type;
- (id)description;
- (id)metadata;
- (int)bracketedCaptureSequenceNumberForOISLongExposure;
- (void)cannotProcessDeepFusionEnhancedResolution;
- (void)cannotProcessDepthPhotos;
- (void)dealloc;
- (void)disableAWBReflow;
- (void)encodeWithCoder:(id)coder;
- (void)setCmioCompressedFormat:(id)format;
- (void)setLastTimeMachinePTS:(id *)s;
- (void)updateForLearnedFusionMissingEVMinus:(BOOL)minus missingHDRErrorRecoveryEVZero:(BOOL)zero;
@end

@implementation BWStillImageCaptureSettings

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageCaptureSettings)initWithSettingsID:(int64_t)d captureType:(int)type captureFlags:(unint64_t)flags sceneFlags:(unint64_t)sceneFlags frameStatisticsByPortType:(id)portType deliverOriginalImage:(BOOL)image deliverSushiRaw:(BOOL)raw captureStreamSettings:(id)self0
{
  v18.receiver = self;
  v18.super_class = BWStillImageCaptureSettings;
  v16 = [(BWStillImageCaptureSettings *)&v18 init];
  if (v16)
  {
    if (![settings count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"captureStreamSettings must have at least 1 element" userInfo:0]);
    }

    v16->_settingsID = d;
    v16->_captureType = type;
    v16->_captureFlags = flags;
    v16->_sceneFlags = sceneFlags;
    v16->_frameStatisticsByPortType = portType;
    v16->_deliverOriginalImage = image;
    v16->_deliverSushiRaw = raw;
    v16->_captureStreamSettings = settings;
    v16->_cmioMaxPhotoDimensions.width = 0;
    v16->_cmioMaxPhotoDimensions.height = 0;
  }

  return v16;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureSettings;
  [(BWStillImageCaptureSettings *)&v3 dealloc];
}

- (BWStillImageCaptureSettings)initWithCoder:(id)coder
{
  v4 = [(BWStillImageCaptureSettings *)self init];
  if (v4)
  {
    v4->_settingsID = [coder decodeInt64ForKey:@"settingsID"];
    v4->_captureType = [coder decodeInt32ForKey:@"captureType"];
    v4->_captureFlags = [coder decodeInt64ForKey:@"captureFlags"];
    v4->_sceneFlags = [coder decodeInt64ForKey:@"sceneFlags"];
    v4->_deliverOriginalImage = [coder decodeBoolForKey:@"deliverOriginalImage"];
    v4->_deliverSushiRaw = [coder decodeBoolForKey:@"deliverSushiRaw"];
    v4->_deliverDeferredPhotoProxyImage = [coder decodeBoolForKey:@"deferredPhotoProxyImageKey"];
    v4->_downgradedDeepFusionEnhancedResolutionCapture = [coder decodeBoolForKey:@"wasDeepFusionEnhancedResolutionCapture"];
    v4->_learnedNRStereoPhotoFrameFlag = [coder decodeInt64ForKey:@"learnedNRStereoPhotoFrameFlag"];
    v4->_masterPortType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"masterPortType"];
    v5 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [coder decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)), @"captureStreamSettings"}];
    v4->_captureStreamSettings = v6;
    if (![(NSArray *)v6 count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"captureStreamSettings must have at least 1 element" userInfo:0]);
    }

    if (!v4->_masterPortType)
    {
      v4->_masterPortType = [-[NSArray objectAtIndexedSubscript:](v4->_captureStreamSettings objectAtIndexedSubscript:{0), "portType"}];
    }

    v4->_timeMachineReferenceFrameBracketedCaptureSequenceNumber = [coder decodeInt32ForKey:@"timeMachineReferenceFrameBracketedCaptureSequenceNumber"];
    v7 = objc_opt_class();
    v8 = [coder decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"lastTimeMachinePTS"];
    CMTimeMakeFromDictionary(&v11, v8);
    *(&v4->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1) = v11;
    v4->_frameStatisticsByPortType = [coder decodeObjectOfClass:objc_opt_class() forKey:@"frameStatisticsByPortType"];
    v4->_metadata = [coder decodeObjectOfClass:objc_opt_class() forKey:@"captureMetadata"];
    v4->_streamSelectorDebugInfo = [coder decodePropertyListForKey:@"streamSelectorDebugInfo"];
    v4->_applicationID = [coder decodeObjectOfClass:objc_opt_class() forKey:@"applicationID"];
    v4->_stillImageRequestTime = [coder decodeInt64ForKey:@"stillImageRequestTime"];
    [coder decodeFloatForKey:@"scaleFactor"];
    v4->_scaleFactor = v9;
  }

  return v4;
}

- (void)encodeWithCoder:(id)coder
{
  [coder encodeInt64:self->_settingsID forKey:@"settingsID"];
  [coder encodeInt32:self->_captureType forKey:@"captureType"];
  [coder encodeInt64:self->_captureFlags forKey:@"captureFlags"];
  [coder encodeInt64:self->_sceneFlags forKey:@"sceneFlags"];
  [coder encodeBool:self->_deliverOriginalImage forKey:@"deliverOriginalImage"];
  [coder encodeBool:self->_deliverSushiRaw forKey:@"deliverSushiRaw"];
  [coder encodeBool:self->_deliverDeferredPhotoProxyImage forKey:@"deferredPhotoProxyImageKey"];
  [coder encodeBool:self->_downgradedDeepFusionEnhancedResolutionCapture forKey:@"wasDeepFusionEnhancedResolutionCapture"];
  [coder encodeInt64:self->_learnedNRStereoPhotoFrameFlag forKey:@"learnedNRStereoPhotoFrameFlag"];
  [coder encodeObject:self->_masterPortType forKey:@"masterPortType"];
  [coder encodeObject:self->_captureStreamSettings forKey:@"captureStreamSettings"];
  [coder encodeInt32:self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber forKey:@"timeMachineReferenceFrameBracketedCaptureSequenceNumber"];
  v5 = *MEMORY[0x1E695E480];
  *&v8.value = *(&self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1);
  v8.epoch = *&self->_lastTimeMachinePTS.flags;
  v6 = CMTimeCopyAsDictionary(&v8, v5);
  [coder encodeObject:v6 forKey:@"lastTimeMachinePTS"];

  [coder encodeObject:self->_frameStatisticsByPortType forKey:@"frameStatisticsByPortType"];
  [coder encodeObject:self->_metadata forKey:@"captureMetadata"];
  [coder encodeObject:self->_streamSelectorDebugInfo forKey:@"streamSelectorDebugInfo"];
  [coder encodeObject:self->_applicationID forKey:@"applicationID"];
  [coder encodeInt64:self->_stillImageRequestTime forKey:@"stillImageRequestTime"];
  *&v7 = self->_scaleFactor;
  [coder encodeFloat:@"scaleFactor" forKey:v7];
}

- (BOOL)isEqual:(id)equal
{
  if (equal == self)
  {
    LOBYTE(v18) = 1;
  }

  else
  {
    v30 = v6;
    v31 = v5;
    v32 = v3;
    v33 = v4;
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      goto LABEL_25;
    }

    settingsID = self->_settingsID;
    if (settingsID != [equal settingsID])
    {
      goto LABEL_25;
    }

    captureType = self->_captureType;
    if (captureType != [equal captureType])
    {
      goto LABEL_25;
    }

    captureFlags = self->_captureFlags;
    if (captureFlags != [equal captureFlags])
    {
      goto LABEL_25;
    }

    sceneFlags = self->_sceneFlags;
    if (sceneFlags != [equal sceneFlags])
    {
      goto LABEL_25;
    }

    deliverOriginalImage = self->_deliverOriginalImage;
    if (deliverOriginalImage != [equal deliverOriginalImage])
    {
      goto LABEL_25;
    }

    deliverSushiRaw = self->_deliverSushiRaw;
    if (deliverSushiRaw != [equal deliverSushiRaw])
    {
      goto LABEL_25;
    }

    deliverDeferredPhotoProxyImage = self->_deliverDeferredPhotoProxyImage;
    if (deliverDeferredPhotoProxyImage != [equal deliverDeferredPhotoProxyImage])
    {
      goto LABEL_25;
    }

    downgradedDeepFusionEnhancedResolutionCapture = self->_downgradedDeepFusionEnhancedResolutionCapture;
    if (downgradedDeepFusionEnhancedResolutionCapture != [equal downgradedDeepFusionEnhancedResolutionCapture])
    {
      goto LABEL_25;
    }

    learnedNRStereoPhotoFrameFlag = self->_learnedNRStereoPhotoFrameFlag;
    if (learnedNRStereoPhotoFrameFlag != [equal learnedNRStereoPhotoFrameFlag])
    {
      goto LABEL_25;
    }

    v18 = -[BWFrameStatisticsByPortType isEqual:](self->_frameStatisticsByPortType, "isEqual:", [equal frameStatisticsByPortType]);
    if (v18)
    {
      metadata = self->_metadata;
      if (metadata == [equal metadata] || (v18 = -[BWStillImageCaptureMetadata isEqual:](self->_metadata, "isEqual:", objc_msgSend(equal, "metadata"))) != 0)
      {
        streamSelectorDebugInfo = self->_streamSelectorDebugInfo;
        if (streamSelectorDebugInfo == [equal streamSelectorDebugInfo] || (v18 = -[NSDictionary isEqualToDictionary:](self->_streamSelectorDebugInfo, "isEqualToDictionary:", objc_msgSend(equal, "streamSelectorDebugInfo"))) != 0)
        {
          captureStreamSettings = self->_captureStreamSettings;
          if (captureStreamSettings == [equal captureStreamSettings] || (v18 = -[NSArray isEqual:](self->_captureStreamSettings, "isEqual:", objc_msgSend(equal, "captureStreamSettings"))) != 0)
          {
            timeMachineReferenceFrameBracketedCaptureSequenceNumber = self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber;
            if (timeMachineReferenceFrameBracketedCaptureSequenceNumber != [equal timeMachineReferenceFrameBracketedCaptureSequenceNumber])
            {
              goto LABEL_25;
            }

            if (equal)
            {
              [equal lastTimeMachinePTS];
            }

            else
            {
              memset(&time2, 0, sizeof(time2));
            }

            v28 = *(&self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1);
            if (CMTimeCompare(&v28, &time2))
            {
              goto LABEL_25;
            }

            applicationID = self->_applicationID;
            if (applicationID == [equal applicationID] || (v18 = -[NSString isEqualToString:](self->_applicationID, "isEqualToString:", objc_msgSend(equal, "applicationID"))) != 0)
            {
              stillImageRequestTime = self->_stillImageRequestTime;
              if (stillImageRequestTime == [equal stillImageRequestTime])
              {
                scaleFactor = self->_scaleFactor;
                [equal scaleFactor];
                LOBYTE(v18) = scaleFactor == v26;
                return v18;
              }

LABEL_25:
              LOBYTE(v18) = 0;
            }
          }
        }
      }
    }
  }

  return v18;
}

- (void)disableAWBReflow
{
  self->_captureFlags &= ~0x8000000000uLL;
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v3 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v8 objects:v7 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v9;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v9 != v5)
        {
          objc_enumerationMutation(captureStreamSettings);
        }

        [*(*(&v8 + 1) + 8 * i) disableAWBReflow];
      }

      v4 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v8 objects:v7 count:16];
    }

    while (v4);
  }
}

- (void)cannotProcessDeepFusionEnhancedResolution
{
  captureFlags = self->_captureFlags;
  if ((captureFlags & 0x200000000) != 0)
  {
    self->_downgradedDeepFusionEnhancedResolutionCapture = 1;
    self->_captureFlags = captureFlags & 0xFFFFFFFDFFFFFFFFLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    captureStreamSettings = self->_captureStreamSettings;
    v4 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(captureStreamSettings);
          }

          [*(*(&v9 + 1) + 8 * i) cannotProcessDeepFusionEnhancedResolution];
        }

        v5 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)cannotProcessDepthPhotos
{
  captureFlags = self->_captureFlags;
  if ((captureFlags & 0x800) != 0)
  {
    self->_captureFlags = captureFlags & 0xFFFFFFFFFFFFF7FFLL;
    v9 = 0u;
    v10 = 0u;
    v11 = 0u;
    v12 = 0u;
    captureStreamSettings = self->_captureStreamSettings;
    v4 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v9 objects:v8 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v10;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v10 != v6)
          {
            objc_enumerationMutation(captureStreamSettings);
          }

          [*(*(&v9 + 1) + 8 * i) cannotProcessDepthPhotos];
        }

        v5 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v9 objects:v8 count:16];
      }

      while (v5);
    }
  }
}

- (void)updateForLearnedFusionMissingEVMinus:(BOOL)minus missingHDRErrorRecoveryEVZero:(BOOL)zero
{
  zeroCopy = zero;
  minusCopy = minus;
  if (minus)
  {
    captureFlags = self->_captureFlags;
    if ((captureFlags & 0x100000) != 0)
    {
      self->_captureFlags = captureFlags & 0xFFFFFFFFFFEFFFFFLL;
    }
  }

  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v8 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v14;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v14 != v10)
        {
          objc_enumerationMutation(captureStreamSettings);
        }

        [*(*(&v13 + 1) + 8 * i) updateForLearnedFusionMissingEVMinus:minusCopy missingHDRErrorRecoveryEVZero:zeroCopy];
      }

      v9 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v9);
  }
}

- (NSArray)secondaryPortTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v16 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v5 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v14;
    do
    {
      for (i = 0; i != v6; ++i)
      {
        if (*v14 != v7)
        {
          objc_enumerationMutation(captureStreamSettings);
        }

        v9 = *(*(&v13 + 1) + 8 * i);
        if (([objc_msgSend(v9 "portType")] & 1) == 0)
        {
          [v3 addObject:{objc_msgSend(v9, "portType")}];
        }
      }

      v6 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
    }

    while (v6);
  }

  v10 = [v3 copy];

  return v10;
}

- (NSArray)portTypes
{
  v3 = objc_alloc_init(MEMORY[0x1E695DF70]);
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v5 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(captureStreamSettings);
        }

        [v3 addObject:{objc_msgSend(*(*(&v12 + 1) + 8 * v8++), "portType")}];
      }

      while (v6 != v8);
      v6 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v6);
  }

  v9 = [v3 copy];

  return v9;
}

- (id)captureStreamSettingsForPortType:(id)type
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v5 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (!v5)
  {
    return 0;
  }

  v6 = v5;
  v7 = *v13;
LABEL_3:
  v8 = 0;
  while (1)
  {
    if (*v13 != v7)
    {
      objc_enumerationMutation(captureStreamSettings);
    }

    v9 = *(*(&v12 + 1) + 8 * v8);
    if ([objc_msgSend(v9 "portType")])
    {
      return v9;
    }

    if (v6 == ++v8)
    {
      v6 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v12 objects:v11 count:16];
      if (v6)
      {
        goto LABEL_3;
      }

      return 0;
    }
  }
}

- (id)description
{
  string = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = BWPhotoEncoderStringFromEncodingScheme(self->_captureType);
  v6 = BWStillImageCaptureFrameFlagsToShortString(self->_captureFlags);
  v7 = BWStillImageCaptureFrameFlagsToShortString(self->_sceneFlags);
  [string appendFormat:@"<%@ %p>: type:%@, capture flags: %@, scene flags: %@, deliverOriginalImage:%d deliverSushiRaw:%d deliverDeferredPhotoProxyImage:%d downgradedDeepFusionEnhancedResolutionCapture:%d learnedNRStereoPhotoFrame:%@", v4, self, v5, v6, v7, self->_deliverOriginalImage, self->_deliverSushiRaw, self->_deliverDeferredPhotoProxyImage, self->_downgradedDeepFusionEnhancedResolutionCapture, BWStillImageCaptureFrameFlagsToShortString(self->_learnedNRStereoPhotoFrameFlag)];
  if ([(NSArray *)self->_captureStreamSettings count]<= 1)
  {
    v8 = "";
  }

  else
  {
    v8 = " 0";
  }

  [string appendFormat:@", \nstream%s still image options: \n\t%@", v8, -[NSArray objectAtIndexedSubscript:](self->_captureStreamSettings, "objectAtIndexedSubscript:", 0)];
  if ([(NSArray *)self->_captureStreamSettings count]>= 2)
  {
    v9 = 1;
    v10 = 1;
    do
    {
      [string appendFormat:@"\nstream %u still image options: \n\t%@", v10, -[NSArray objectAtIndexedSubscript:](self->_captureStreamSettings, "objectAtIndexedSubscript:", v9)];
      v9 = (v10 + 1);
      v10 = v9;
    }

    while ([(NSArray *)self->_captureStreamSettings count]> v9);
  }

  return string;
}

- (int)bracketedCaptureSequenceNumberForOISLongExposure
{
  v15 = 0u;
  v16 = 0u;
  v13 = 0u;
  v14 = 0u;
  captureStreamSettings = self->_captureStreamSettings;
  v3 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = *v14;
    v6 = *off_1E798B8D8;
    while (2)
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v14 != v5)
        {
          objc_enumerationMutation(captureStreamSettings);
        }

        v8 = *(*(&v13 + 1) + 8 * i);
        if ([objc_msgSend(v8 "bracketSettings")] == 3)
        {
          v9 = [objc_msgSend(objc_msgSend(v8 "bracketSettings")];
          if ([v9 count])
          {
            v10 = 0;
            while ([objc_msgSend(v9 objectAtIndexedSubscript:{v10), "intValue"}] != 1)
            {
              if ([v9 count] <= ++v10)
              {
                goto LABEL_11;
              }
            }

            LODWORD(v3) = v10 + 1;
            return v3;
          }
        }

LABEL_11:
        ;
      }

      v4 = [(NSArray *)captureStreamSettings countByEnumeratingWithState:&v13 objects:v12 count:16];
      LODWORD(v3) = 0;
      if (v4)
      {
        continue;
      }

      break;
    }
  }

  return v3;
}

- (BOOL)expectReferenceFrameBracketedCaptureSequenceNumber
{
  v3 = self->_captureType & 0xFFFFFFFE;
  v4 = [(NSArray *)self->_captureStreamSettings count];
  v5 = (self->_captureFlags >> 13) & 1;
  if (v4 > 1)
  {
    LOBYTE(v5) = 1;
  }

  if (v3 == 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

- (id)metadata
{
  result = self->_metadata;
  if (!result)
  {
    result = objc_alloc_init(BWStillImageCaptureMetadata);
    self->_metadata = result;
  }

  return result;
}

- (void)setCmioCompressedFormat:(id)format
{
  cmioCompressedFormat = self->_cmioCompressedFormat;
  if (cmioCompressedFormat != format)
  {

    self->_cmioCompressedFormat = format;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTimeMachinePTS
{
  *&retstr->var0 = *(&self[4].var0 + 4);
  retstr->var3 = *(&self[4].var3 + 4);
  return self;
}

- (void)setLastTimeMachinePTS:(id *)s
{
  v3 = *&s->var0;
  *&self->_lastTimeMachinePTS.flags = s->var3;
  *(&self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1) = v3;
}

@end