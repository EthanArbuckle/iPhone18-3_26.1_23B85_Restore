@interface BWStillImageCaptureSettings
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTimeMachinePTS;
- (BOOL)expectReferenceFrameBracketedCaptureSequenceNumber;
- (BOOL)isEqual:(id)a3;
- (BWStillImageCaptureSettings)initWithCoder:(id)a3;
- (BWStillImageCaptureSettings)initWithSettingsID:(int64_t)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 sceneFlags:(unint64_t)a6 frameStatisticsByPortType:(id)a7 deliverOriginalImage:(BOOL)a8 deliverSushiRaw:(BOOL)a9 captureStreamSettings:(id)a10;
- (NSArray)portTypes;
- (NSArray)secondaryPortTypes;
- (id)captureStreamSettingsForPortType:(id)a3;
- (id)description;
- (id)metadata;
- (int)bracketedCaptureSequenceNumberForOISLongExposure;
- (void)cannotProcessDeepFusionEnhancedResolution;
- (void)cannotProcessDepthPhotos;
- (void)dealloc;
- (void)disableAWBReflow;
- (void)encodeWithCoder:(id)a3;
- (void)setCmioCompressedFormat:(id)a3;
- (void)setLastTimeMachinePTS:(id *)a3;
- (void)updateForLearnedFusionMissingEVMinus:(BOOL)a3 missingHDRErrorRecoveryEVZero:(BOOL)a4;
@end

@implementation BWStillImageCaptureSettings

+ (void)initialize
{
  if (objc_opt_class() == a1)
  {
    FigNote_AllowInternalDefaultLogs();
    fig_note_initialize_category_with_default_work_cf();

    fig_note_initialize_category_with_default_work_cf();
  }
}

- (BWStillImageCaptureSettings)initWithSettingsID:(int64_t)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 sceneFlags:(unint64_t)a6 frameStatisticsByPortType:(id)a7 deliverOriginalImage:(BOOL)a8 deliverSushiRaw:(BOOL)a9 captureStreamSettings:(id)a10
{
  v18.receiver = self;
  v18.super_class = BWStillImageCaptureSettings;
  v16 = [(BWStillImageCaptureSettings *)&v18 init];
  if (v16)
  {
    if (![a10 count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"captureStreamSettings must have at least 1 element" userInfo:0]);
    }

    v16->_settingsID = a3;
    v16->_captureType = a4;
    v16->_captureFlags = a5;
    v16->_sceneFlags = a6;
    v16->_frameStatisticsByPortType = a7;
    v16->_deliverOriginalImage = a8;
    v16->_deliverSushiRaw = a9;
    v16->_captureStreamSettings = a10;
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

- (BWStillImageCaptureSettings)initWithCoder:(id)a3
{
  v4 = [(BWStillImageCaptureSettings *)self init];
  if (v4)
  {
    v4->_settingsID = [a3 decodeInt64ForKey:@"settingsID"];
    v4->_captureType = [a3 decodeInt32ForKey:@"captureType"];
    v4->_captureFlags = [a3 decodeInt64ForKey:@"captureFlags"];
    v4->_sceneFlags = [a3 decodeInt64ForKey:@"sceneFlags"];
    v4->_deliverOriginalImage = [a3 decodeBoolForKey:@"deliverOriginalImage"];
    v4->_deliverSushiRaw = [a3 decodeBoolForKey:@"deliverSushiRaw"];
    v4->_deliverDeferredPhotoProxyImage = [a3 decodeBoolForKey:@"deferredPhotoProxyImageKey"];
    v4->_downgradedDeepFusionEnhancedResolutionCapture = [a3 decodeBoolForKey:@"wasDeepFusionEnhancedResolutionCapture"];
    v4->_learnedNRStereoPhotoFrameFlag = [a3 decodeInt64ForKey:@"learnedNRStereoPhotoFrameFlag"];
    v4->_masterPortType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"masterPortType"];
    v5 = MEMORY[0x1E695DFD8];
    v12[0] = objc_opt_class();
    v12[1] = objc_opt_class();
    v6 = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithArray:", objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v12, 2)), @"captureStreamSettings"}];
    v4->_captureStreamSettings = v6;
    if (![(NSArray *)v6 count])
    {
      objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"captureStreamSettings must have at least 1 element" userInfo:0]);
    }

    if (!v4->_masterPortType)
    {
      v4->_masterPortType = [-[NSArray objectAtIndexedSubscript:](v4->_captureStreamSettings objectAtIndexedSubscript:{0), "portType"}];
    }

    v4->_timeMachineReferenceFrameBracketedCaptureSequenceNumber = [a3 decodeInt32ForKey:@"timeMachineReferenceFrameBracketedCaptureSequenceNumber"];
    v7 = objc_opt_class();
    v8 = [a3 decodeDictionaryWithKeysOfClass:v7 objectsOfClass:objc_opt_class() forKey:@"lastTimeMachinePTS"];
    CMTimeMakeFromDictionary(&v11, v8);
    *(&v4->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1) = v11;
    v4->_frameStatisticsByPortType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"frameStatisticsByPortType"];
    v4->_metadata = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"captureMetadata"];
    v4->_streamSelectorDebugInfo = [a3 decodePropertyListForKey:@"streamSelectorDebugInfo"];
    v4->_applicationID = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"applicationID"];
    v4->_stillImageRequestTime = [a3 decodeInt64ForKey:@"stillImageRequestTime"];
    [a3 decodeFloatForKey:@"scaleFactor"];
    v4->_scaleFactor = v9;
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeInt64:self->_settingsID forKey:@"settingsID"];
  [a3 encodeInt32:self->_captureType forKey:@"captureType"];
  [a3 encodeInt64:self->_captureFlags forKey:@"captureFlags"];
  [a3 encodeInt64:self->_sceneFlags forKey:@"sceneFlags"];
  [a3 encodeBool:self->_deliverOriginalImage forKey:@"deliverOriginalImage"];
  [a3 encodeBool:self->_deliverSushiRaw forKey:@"deliverSushiRaw"];
  [a3 encodeBool:self->_deliverDeferredPhotoProxyImage forKey:@"deferredPhotoProxyImageKey"];
  [a3 encodeBool:self->_downgradedDeepFusionEnhancedResolutionCapture forKey:@"wasDeepFusionEnhancedResolutionCapture"];
  [a3 encodeInt64:self->_learnedNRStereoPhotoFrameFlag forKey:@"learnedNRStereoPhotoFrameFlag"];
  [a3 encodeObject:self->_masterPortType forKey:@"masterPortType"];
  [a3 encodeObject:self->_captureStreamSettings forKey:@"captureStreamSettings"];
  [a3 encodeInt32:self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber forKey:@"timeMachineReferenceFrameBracketedCaptureSequenceNumber"];
  v5 = *MEMORY[0x1E695E480];
  *&v8.value = *(&self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1);
  v8.epoch = *&self->_lastTimeMachinePTS.flags;
  v6 = CMTimeCopyAsDictionary(&v8, v5);
  [a3 encodeObject:v6 forKey:@"lastTimeMachinePTS"];

  [a3 encodeObject:self->_frameStatisticsByPortType forKey:@"frameStatisticsByPortType"];
  [a3 encodeObject:self->_metadata forKey:@"captureMetadata"];
  [a3 encodeObject:self->_streamSelectorDebugInfo forKey:@"streamSelectorDebugInfo"];
  [a3 encodeObject:self->_applicationID forKey:@"applicationID"];
  [a3 encodeInt64:self->_stillImageRequestTime forKey:@"stillImageRequestTime"];
  *&v7 = self->_scaleFactor;
  [a3 encodeFloat:@"scaleFactor" forKey:v7];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
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
    if (settingsID != [a3 settingsID])
    {
      goto LABEL_25;
    }

    captureType = self->_captureType;
    if (captureType != [a3 captureType])
    {
      goto LABEL_25;
    }

    captureFlags = self->_captureFlags;
    if (captureFlags != [a3 captureFlags])
    {
      goto LABEL_25;
    }

    sceneFlags = self->_sceneFlags;
    if (sceneFlags != [a3 sceneFlags])
    {
      goto LABEL_25;
    }

    deliverOriginalImage = self->_deliverOriginalImage;
    if (deliverOriginalImage != [a3 deliverOriginalImage])
    {
      goto LABEL_25;
    }

    deliverSushiRaw = self->_deliverSushiRaw;
    if (deliverSushiRaw != [a3 deliverSushiRaw])
    {
      goto LABEL_25;
    }

    deliverDeferredPhotoProxyImage = self->_deliverDeferredPhotoProxyImage;
    if (deliverDeferredPhotoProxyImage != [a3 deliverDeferredPhotoProxyImage])
    {
      goto LABEL_25;
    }

    downgradedDeepFusionEnhancedResolutionCapture = self->_downgradedDeepFusionEnhancedResolutionCapture;
    if (downgradedDeepFusionEnhancedResolutionCapture != [a3 downgradedDeepFusionEnhancedResolutionCapture])
    {
      goto LABEL_25;
    }

    learnedNRStereoPhotoFrameFlag = self->_learnedNRStereoPhotoFrameFlag;
    if (learnedNRStereoPhotoFrameFlag != [a3 learnedNRStereoPhotoFrameFlag])
    {
      goto LABEL_25;
    }

    v18 = -[BWFrameStatisticsByPortType isEqual:](self->_frameStatisticsByPortType, "isEqual:", [a3 frameStatisticsByPortType]);
    if (v18)
    {
      metadata = self->_metadata;
      if (metadata == [a3 metadata] || (v18 = -[BWStillImageCaptureMetadata isEqual:](self->_metadata, "isEqual:", objc_msgSend(a3, "metadata"))) != 0)
      {
        streamSelectorDebugInfo = self->_streamSelectorDebugInfo;
        if (streamSelectorDebugInfo == [a3 streamSelectorDebugInfo] || (v18 = -[NSDictionary isEqualToDictionary:](self->_streamSelectorDebugInfo, "isEqualToDictionary:", objc_msgSend(a3, "streamSelectorDebugInfo"))) != 0)
        {
          captureStreamSettings = self->_captureStreamSettings;
          if (captureStreamSettings == [a3 captureStreamSettings] || (v18 = -[NSArray isEqual:](self->_captureStreamSettings, "isEqual:", objc_msgSend(a3, "captureStreamSettings"))) != 0)
          {
            timeMachineReferenceFrameBracketedCaptureSequenceNumber = self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber;
            if (timeMachineReferenceFrameBracketedCaptureSequenceNumber != [a3 timeMachineReferenceFrameBracketedCaptureSequenceNumber])
            {
              goto LABEL_25;
            }

            if (a3)
            {
              [a3 lastTimeMachinePTS];
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
            if (applicationID == [a3 applicationID] || (v18 = -[NSString isEqualToString:](self->_applicationID, "isEqualToString:", objc_msgSend(a3, "applicationID"))) != 0)
            {
              stillImageRequestTime = self->_stillImageRequestTime;
              if (stillImageRequestTime == [a3 stillImageRequestTime])
              {
                scaleFactor = self->_scaleFactor;
                [a3 scaleFactor];
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

- (void)updateForLearnedFusionMissingEVMinus:(BOOL)a3 missingHDRErrorRecoveryEVZero:(BOOL)a4
{
  v4 = a4;
  v5 = a3;
  if (a3)
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

        [*(*(&v13 + 1) + 8 * i) updateForLearnedFusionMissingEVMinus:v5 missingHDRErrorRecoveryEVZero:v4];
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

- (id)captureStreamSettingsForPortType:(id)a3
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
  v3 = [MEMORY[0x1E696AD60] string];
  v4 = objc_opt_class();
  v5 = BWPhotoEncoderStringFromEncodingScheme(self->_captureType);
  v6 = BWStillImageCaptureFrameFlagsToShortString(self->_captureFlags);
  v7 = BWStillImageCaptureFrameFlagsToShortString(self->_sceneFlags);
  [v3 appendFormat:@"<%@ %p>: type:%@, capture flags: %@, scene flags: %@, deliverOriginalImage:%d deliverSushiRaw:%d deliverDeferredPhotoProxyImage:%d downgradedDeepFusionEnhancedResolutionCapture:%d learnedNRStereoPhotoFrame:%@", v4, self, v5, v6, v7, self->_deliverOriginalImage, self->_deliverSushiRaw, self->_deliverDeferredPhotoProxyImage, self->_downgradedDeepFusionEnhancedResolutionCapture, BWStillImageCaptureFrameFlagsToShortString(self->_learnedNRStereoPhotoFrameFlag)];
  if ([(NSArray *)self->_captureStreamSettings count]<= 1)
  {
    v8 = "";
  }

  else
  {
    v8 = " 0";
  }

  [v3 appendFormat:@", \nstream%s still image options: \n\t%@", v8, -[NSArray objectAtIndexedSubscript:](self->_captureStreamSettings, "objectAtIndexedSubscript:", 0)];
  if ([(NSArray *)self->_captureStreamSettings count]>= 2)
  {
    v9 = 1;
    v10 = 1;
    do
    {
      [v3 appendFormat:@"\nstream %u still image options: \n\t%@", v10, -[NSArray objectAtIndexedSubscript:](self->_captureStreamSettings, "objectAtIndexedSubscript:", v9)];
      v9 = (v10 + 1);
      v10 = v9;
    }

    while ([(NSArray *)self->_captureStreamSettings count]> v9);
  }

  return v3;
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

- (void)setCmioCompressedFormat:(id)a3
{
  cmioCompressedFormat = self->_cmioCompressedFormat;
  if (cmioCompressedFormat != a3)
  {

    self->_cmioCompressedFormat = a3;
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)lastTimeMachinePTS
{
  *&retstr->var0 = *(&self[4].var0 + 4);
  retstr->var3 = *(&self[4].var3 + 4);
  return self;
}

- (void)setLastTimeMachinePTS:(id *)a3
{
  v3 = *&a3->var0;
  *&self->_lastTimeMachinePTS.flags = a3->var3;
  *(&self->_timeMachineReferenceFrameBracketedCaptureSequenceNumber + 1) = v3;
}

@end