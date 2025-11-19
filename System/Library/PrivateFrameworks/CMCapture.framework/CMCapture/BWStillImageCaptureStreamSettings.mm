@interface BWStillImageCaptureStreamSettings
- ($08FEEAFA44411076A5953C2803702ABC)expectedFrameCaptureCounts;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adaptiveBracketingLastFramePTS;
- (BOOL)hasCaptureFrameInfoWithMainFlags:(unint64_t)a3 sifrFlags:(unint64_t)a4;
- (BOOL)hasValidFrames;
- (BOOL)isEqual:(id)a3;
- (BOOL)isFirstAdaptiveBracketingFrame:(opaqueCMSampleBuffer *)a3;
- (BOOL)isFrameCapturedForProcessing:(opaqueCMSampleBuffer *)a3;
- (BOOL)isSensorRawCapture;
- (BOOL)isUnifiedBracketingErrorRecoveryFrame:(opaqueCMSampleBuffer *)a3 isReferenceFrame:(BOOL)a4;
- (BOOL)isYUVCapture;
- (BOOL)reachedEndOfAdaptiveBracketing;
- (BOOL)sensorRawCapturedForFinalImageProcessing;
- (BWStillImageCaptureStreamSettings)initWithCoder:(id)a3;
- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 referenceFrameIndex:(int)a6 adaptiveBracketingParameters:(id)a7 sphereOffsets:(id)a8;
- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 referenceFrameIndex:(int)a6 timeMachineBracketedCaptureParams:(id)a7 preBracketFrameCaptureParams:(id)a8 unifiedBracketedCaptureParams:(id)a9 frameInfos:(id)a10;
- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 timeMachineFrameCount:(int)a6 bracketSettings:(id)a7 validBracketedCaptureSequenceNumbers:(id)a8;
- (id)adaptiveBracketingFrameParametersForFrame:(opaqueCMSampleBuffer *)a3;
- (id)adaptiveBracketingSphereOffsetsForNextGroupWithFrameCount:(int)a3;
- (id)adaptivePreBracketFrameCaptureParams;
- (id)adaptiveTimeMachineBracketedCaptureParams;
- (id)adaptiveUnifiedBracketedCaptureParams;
- (id)captureFrameInfoForFrame:(opaqueCMSampleBuffer *)a3;
- (int)adaptiveBracketingGroupCaptureCount;
- (int)currentExpectedAdaptiveBracketedFrameCaptureCount;
- (int)currentExpectedAdaptiveBracketedFrameCount;
- (int)expectedAdaptiveBracketedFrameCaptureCountUsingGroup:(int)a3;
- (int)expectedAdaptiveBracketedTimeMachineFrameCaptureCountUsingGroup:(int)a3;
- (int)expectedAdaptiveBracketedTimeMachineFrameCountUsingGroup:(int)a3;
- (int)expectedEVZeroFrameCount;
- (int)expectedFrameCaptureCount;
- (int)expectedFrameCount;
- (int)expectedLongFrameCount;
- (int)expectedReferenceFrameCandidateCount;
- (int)expectedTimeMachineFrameCaptureCount;
- (int)expectedUltraHighResFrameCaptureCount;
- (int)resolutionFlavor;
- (int)timeMachineReferenceFrameIndex;
- (uint64_t)_expectedFrameCaptureCountForFrameParams:(uint64_t)a1;
- (void)addAdaptiveBracketingFrameParameters:(id)a3 timeMachineBracketedCaptureParams:(id)a4 preBracketFrameCaptureParams:(id)a5 unifiedBracketedCaptureParams:(id)a6 captureFrameInfos:(id)a7;
- (void)addAdaptiveBracketingMetadataIfNeededForFrame:(opaqueCMSampleBuffer *)a3;
- (void)cannotProcessDeepFusionEnhancedResolution;
- (void)dealloc;
- (void)encodeWithCoder:(id)a3;
- (void)setAdaptiveBracketingLastFramePTS:(id *)a3;
- (void)setPreferredTimeMachinePTS:(id *)a3;
- (void)setReachedEndOfAdaptiveBracketing:(BOOL)a3;
- (void)updateForLearnedFusionMissingEVMinus:(BOOL)a3 missingHDRErrorRecoveryEVZero:(BOOL)a4;
@end

@implementation BWStillImageCaptureStreamSettings

- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 timeMachineFrameCount:(int)a6 bracketSettings:(id)a7 validBracketedCaptureSequenceNumbers:(id)a8
{
  v16.receiver = self;
  v16.super_class = BWStillImageCaptureStreamSettings;
  v14 = [(BWStillImageCaptureStreamSettings *)&v16 init];
  if (v14)
  {
    v14->_portType = a3;
    v14->_captureType = a4;
    v14->_captureFlags = a5;
    v14->_timeMachineFrameCount = a6;
    v14->_bracketSettings = a7;
    v14->_validBracketedCaptureSequenceNumbers = a8;
    v14->_referenceFrameIndex = -1;
  }

  return v14;
}

- (void)dealloc
{
  v3.receiver = self;
  v3.super_class = BWStillImageCaptureStreamSettings;
  [(BWStillImageCaptureStreamSettings *)&v3 dealloc];
}

- (BWStillImageCaptureStreamSettings)initWithCoder:(id)a3
{
  v4 = [(BWStillImageCaptureStreamSettings *)self init];
  if (v4)
  {
    v4->_portType = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"portType"];
    v4->_sensorIDString = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"sensorIDString"];
    v4->_captureType = [a3 decodeInt32ForKey:@"captureType"];
    v4->_captureFlags = [a3 decodeInt64ForKey:@"captureFlags"];
    v4->_timeMachineFrameCount = [a3 decodeInt32ForKey:@"timeMachineFrameCount"];
    v4->_bracketSettings = [a3 decodeObjectOfClass:objc_opt_class() forKey:@"bracketSettings"];
    v5 = MEMORY[0x1E695DFD8];
    v6 = objc_opt_class();
    v4->_validBracketedCaptureSequenceNumbers = [a3 decodeObjectOfClasses:objc_msgSend(v5 forKey:{"setWithObjects:", v6, objc_opt_class(), 0), @"validBracketedCaptureSequenceNumbers"}];
    v7 = MEMORY[0x1E695DFD8];
    v8 = objc_opt_class();
    v9 = objc_opt_class();
    v10 = [a3 decodeObjectOfClasses:objc_msgSend(v7 forKey:{"setWithObjects:", v8, v9, objc_opt_class(), 0), @"preferredTimeMachinePTS"}];
    CMTimeMakeFromDictionary(&v21, v10);
    v4->_preferredTimeMachinePTS = v21;
    v11 = MEMORY[0x1E695DFD8];
    v20[0] = objc_opt_class();
    v20[1] = objc_opt_class();
    v20[2] = objc_opt_class();
    v20[3] = objc_opt_class();
    v12 = [v11 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v20, 4)}];
    v13 = MEMORY[0x1E695DFD8];
    v19[0] = objc_opt_class();
    v19[1] = objc_opt_class();
    v14 = [v13 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v19, 2)}];
    v15 = MEMORY[0x1E695DFD8];
    v18[0] = objc_opt_class();
    v18[1] = objc_opt_class();
    v16 = [v15 setWithArray:{objc_msgSend(MEMORY[0x1E695DEC8], "arrayWithObjects:count:", v18, 2)}];
    v4->_referenceFrameIndex = [a3 decodeInt32ForKey:@"referenceFrameIndex"];
    v4->_timeMachineBracketedCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"timeMachineBracketedCaptureParams"];
    v4->_preBracketFrameCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"preBracketFrameCaptureParams"];
    v4->_unifiedBracketedCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"unifiedBracketedCaptureParams"];
    v4->_captureFrameInfos = [a3 decodeObjectOfClasses:v16 forKey:@"captureFrameInfos"];
    v4->_lensStabilizationEnabledForClientBracket = [a3 decodeBoolForKey:@"lensStabilizationEnabledForClientBracket"];
    v4->_adaptiveBracketingSphereOffsets = [a3 decodeObjectOfClasses:v12 forKey:@"adaptiveBracketingSphereOffsets"];
    v4->_adaptiveBracketingFrameParameters = [a3 decodeObjectOfClasses:v14 forKey:@"adaptiveBracketingFrameParameters"];
    v4->_adaptiveTimeMachineBracketedCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"adaptiveTimeMachineBracketedCaptureParams"];
    v4->_adaptivePreBracketFrameCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"adaptivePreBracketFrameCaptureParams"];
    v4->_adaptiveUnifiedBracketedCaptureParams = [a3 decodeObjectOfClasses:v12 forKey:@"adaptiveUnifiedBracketedCaptureParams"];
    v4->_adaptiveCaptureFrameInfos = [a3 decodeObjectOfClasses:v16 forKey:@"adaptiveCaptureFrameInfos"];
  }

  return v4;
}

- (void)encodeWithCoder:(id)a3
{
  [a3 encodeObject:self->_portType forKey:@"portType"];
  [a3 encodeObject:self->_sensorIDString forKey:@"sensorIDString"];
  [a3 encodeInt32:self->_captureType forKey:@"captureType"];
  [a3 encodeInt64:self->_captureFlags forKey:@"captureFlags"];
  [a3 encodeInt32:self->_timeMachineFrameCount forKey:@"timeMachineFrameCount"];
  [a3 encodeObject:self->_bracketSettings forKey:@"bracketSettings"];
  [a3 encodeObject:self->_validBracketedCaptureSequenceNumbers forKey:@"validBracketedCaptureSequenceNumbers"];
  v5 = *MEMORY[0x1E695E480];
  preferredTimeMachinePTS = self->_preferredTimeMachinePTS;
  v6 = CMTimeCopyAsDictionary(&preferredTimeMachinePTS, v5);
  [a3 encodeObject:v6 forKey:@"preferredTimeMachinePTS"];

  [a3 encodeInt32:self->_referenceFrameIndex forKey:@"referenceFrameIndex"];
  [a3 encodeObject:self->_timeMachineBracketedCaptureParams forKey:@"timeMachineBracketedCaptureParams"];
  [a3 encodeObject:self->_preBracketFrameCaptureParams forKey:@"preBracketFrameCaptureParams"];
  [a3 encodeObject:self->_unifiedBracketedCaptureParams forKey:@"unifiedBracketedCaptureParams"];
  [a3 encodeObject:self->_captureFrameInfos forKey:@"captureFrameInfos"];
  [a3 encodeBool:self->_lensStabilizationEnabledForClientBracket forKey:@"lensStabilizationEnabledForClientBracket"];
  [a3 encodeObject:self->_adaptiveBracketingSphereOffsets forKey:@"adaptiveBracketingSphereOffsets"];
  [a3 encodeObject:self->_adaptiveBracketingFrameParameters forKey:@"adaptiveBracketingFrameParameters"];
  [a3 encodeObject:self->_adaptiveTimeMachineBracketedCaptureParams forKey:@"adaptiveTimeMachineBracketedCaptureParams"];
  [a3 encodeObject:self->_adaptivePreBracketFrameCaptureParams forKey:@"adaptivePreBracketFrameCaptureParams"];
  [a3 encodeObject:self->_adaptiveUnifiedBracketedCaptureParams forKey:@"adaptiveUnifiedBracketedCaptureParams"];
  [a3 encodeObject:self->_adaptiveCaptureFrameInfos forKey:@"adaptiveCaptureFrameInfos"];
}

- (BOOL)isEqual:(id)a3
{
  if (a3 == self)
  {
    LOBYTE(v8) = 1;
    return v8;
  }

  v24 = v3;
  v25 = v4;
  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0)
  {
    goto LABEL_29;
  }

  portType = self->_portType;
  if (portType != [a3 portType])
  {
    v8 = -[NSString isEqualToString:](self->_portType, "isEqualToString:", [a3 portType]);
    if (!v8)
    {
      return v8;
    }
  }

  sensorIDString = self->_sensorIDString;
  if (sensorIDString != [a3 sensorIDString])
  {
    v8 = -[NSString isEqualToString:](self->_sensorIDString, "isEqualToString:", [a3 sensorIDString]);
    if (!v8)
    {
      return v8;
    }
  }

  captureType = self->_captureType;
  if (captureType != [a3 captureType])
  {
    goto LABEL_29;
  }

  captureFlags = self->_captureFlags;
  if (captureFlags != [a3 captureFlags])
  {
    goto LABEL_29;
  }

  bracketSettings = self->_bracketSettings;
  if (bracketSettings != [a3 bracketSettings])
  {
    v8 = -[BWBracketSettings isEqual:](self->_bracketSettings, "isEqual:", [a3 bracketSettings]);
    if (!v8)
    {
      return v8;
    }
  }

  validBracketedCaptureSequenceNumbers = self->_validBracketedCaptureSequenceNumbers;
  if (validBracketedCaptureSequenceNumbers != [a3 validBracketedCaptureSequenceNumbers])
  {
    v8 = -[NSArray isEqual:](self->_validBracketedCaptureSequenceNumbers, "isEqual:", [a3 validBracketedCaptureSequenceNumbers]);
    if (!v8)
    {
      return v8;
    }
  }

  if (a3)
  {
    [a3 preferredTimeMachinePTS];
  }

  else
  {
    memset(&time2, 0, sizeof(time2));
  }

  preferredTimeMachinePTS = self->_preferredTimeMachinePTS;
  if (CMTimeCompare(&preferredTimeMachinePTS, &time2) || (timeMachineFrameCount = self->_timeMachineFrameCount, timeMachineFrameCount != [a3 timeMachineFrameCount]) || (referenceFrameIndex = self->_referenceFrameIndex, referenceFrameIndex != objc_msgSend(a3, "referenceFrameIndex")))
  {
LABEL_29:
    LOBYTE(v8) = 0;
    return v8;
  }

  timeMachineBracketedCaptureParams = self->_timeMachineBracketedCaptureParams;
  if (timeMachineBracketedCaptureParams == [a3 timeMachineBracketedCaptureParams] || (v8 = -[NSArray isEqual:](self->_timeMachineBracketedCaptureParams, "isEqual:", objc_msgSend(a3, "timeMachineBracketedCaptureParams"))) != 0)
  {
    preBracketFrameCaptureParams = self->_preBracketFrameCaptureParams;
    if (preBracketFrameCaptureParams == [a3 preBracketFrameCaptureParams] || (v8 = -[NSDictionary isEqual:](self->_preBracketFrameCaptureParams, "isEqual:", objc_msgSend(a3, "preBracketFrameCaptureParams"))) != 0)
    {
      unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
      if (unifiedBracketedCaptureParams == [a3 unifiedBracketedCaptureParams] || (v8 = -[NSArray isEqual:](self->_unifiedBracketedCaptureParams, "isEqual:", objc_msgSend(a3, "unifiedBracketedCaptureParams"))) != 0)
      {
        captureFrameInfos = self->_captureFrameInfos;
        if (captureFrameInfos == *(a3 + 14) || (v8 = [(NSArray *)captureFrameInfos isEqual:?]) != 0)
        {
          lensStabilizationEnabledForClientBracket = self->_lensStabilizationEnabledForClientBracket;
          LOBYTE(v8) = lensStabilizationEnabledForClientBracket == [a3 lensStabilizationEnabledForClientBracket];
        }
      }
    }
  }

  return v8;
}

- (BOOL)hasValidFrames
{
  if (self->_captureFrameInfos)
  {
    return [(BWStillImageCaptureStreamSettings *)self expectedFrameCount]> 0;
  }

  validBracketedCaptureSequenceNumbers = self->_validBracketedCaptureSequenceNumbers;
  return !validBracketedCaptureSequenceNumbers || [(NSArray *)validBracketedCaptureSequenceNumbers count]!= 0;
}

- (int)expectedFrameCount
{
  if ([(NSArray *)self->_captureFrameInfos count])
  {
    v27 = 0u;
    v28 = 0u;
    v25 = 0u;
    v26 = 0u;
    captureFrameInfos = self->_captureFrameInfos;
    v4 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v25 objects:v24 count:16];
    if (!v4)
    {
      return 0;
    }

    v5 = v4;
    timeMachineFrameCount = 0;
    v7 = *v26;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v26 != v7)
        {
          objc_enumerationMutation(captureFrameInfos);
        }

        v9 = *(*(&v25 + 1) + 8 * i);
        v10 = vcnt_s8(([v9 mainFlags] & 0x5000000000000000));
        v10.i16[0] = vaddlv_u8(v10);
        v11 = v10.i32[0];
        v12 = vcnt_s8(([v9 sifrFlags] & 0x5000000000000000));
        v12.i16[0] = vaddlv_u8(v12);
        timeMachineFrameCount += v11 + v12.i32[0];
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          timeMachineFrameCount += [v9 isNoLongErrorRecoveryFrame];
        }
      }

      v5 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v5);
    return timeMachineFrameCount;
  }

  timeMachineFrameCount = self->_timeMachineFrameCount;
  bracketSettings = self->_bracketSettings;
  if (bracketSettings)
  {
    v14 = [(BWBracketSettings *)bracketSettings providePreBracketedEV0];
    timeMachineFrameCount += v14 + [(BWBracketSettings *)self->_bracketSettings bracketFrameCount];
    return timeMachineFrameCount;
  }

  unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
  if (unifiedBracketedCaptureParams)
  {
    if (self->_preBracketFrameCaptureParams)
    {
      v17 = [-[NSDictionary objectForKeyedSubscript:](self->_preBracketFrameCaptureParams objectForKeyedSubscript:{*off_1E798C600), "BOOLValue"}];
      validBracketedCaptureSequenceNumbers = self->_validBracketedCaptureSequenceNumbers;
      if (validBracketedCaptureSequenceNumbers)
      {
        if ((v17 & 1) == 0)
        {
          v19 = [(NSArray *)validBracketedCaptureSequenceNumbers containsObject:&unk_1F22426D0];
          goto LABEL_28;
        }

LABEL_27:
        v19 = 0;
LABEL_28:
        timeMachineFrameCount += v19;
        if ([(NSArray *)self->_unifiedBracketedCaptureParams count])
        {
          v20 = 0;
          LODWORD(v21) = 0;
          v22 = *off_1E798C698;
          do
          {
            if ([objc_msgSend(-[NSArray objectAtIndexedSubscript:](self->_unifiedBracketedCaptureParams objectAtIndexedSubscript:{v20), "objectForKeyedSubscript:", v22), "intValue"}] == 1)
            {
              v21 = v21;
            }

            else
            {
              v21 = (v21 + 1);
            }

            timeMachineFrameCount += -[NSArray containsObject:](self->_validBracketedCaptureSequenceNumbers, "containsObject:", [MEMORY[0x1E696AD98] numberWithInt:v21]);
            ++v20;
          }

          while ([(NSArray *)self->_unifiedBracketedCaptureParams count]> v20);
        }

        return timeMachineFrameCount;
      }

      v23 = v17 ^ 1;
      unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
    }

    else
    {
      if (self->_validBracketedCaptureSequenceNumbers)
      {
        goto LABEL_27;
      }

      v23 = 0;
    }

    timeMachineFrameCount += v23 + [(NSArray *)unifiedBracketedCaptureParams count];
    return timeMachineFrameCount;
  }

  if (!timeMachineFrameCount)
  {
    timeMachineFrameCount = 1;
    if ((self->_captureFlags & 0x10000) != 0)
    {
      if (self->_captureType == 2)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return timeMachineFrameCount;
}

- (int)expectedFrameCaptureCount
{
  v3 = [(BWStillImageCaptureStreamSettings *)self expectedTimeMachineFrameCaptureCount];
  bracketSettings = self->_bracketSettings;
  if (bracketSettings)
  {
    v5 = [(BWBracketSettings *)bracketSettings providePreBracketedEV0];
    v6 = v3 + v5 + [(BWBracketSettings *)self->_bracketSettings bracketFrameCount];
  }

  else if (self->_unifiedBracketedCaptureParams)
  {
    v6 = [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?]+ v3;
    v15 = 0u;
    v16 = 0u;
    v17 = 0u;
    v18 = 0u;
    unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
    v10 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v15 objects:v14 count:16];
    if (v10)
    {
      v11 = v10;
      v12 = *v16;
      do
      {
        for (i = 0; i != v11; ++i)
        {
          if (*v16 != v12)
          {
            objc_enumerationMutation(unifiedBracketedCaptureParams);
          }

          v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
        }

        v11 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v15 objects:v14 count:16];
      }

      while (v11);
    }
  }

  else if (v3 <= 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = v3;
  }

  if (self->_captureType == 2 && (self->_captureFlags & 0x10004) == 0x10000)
  {
    return v6 + 1;
  }

  else
  {
    return v6;
  }
}

- (int)expectedUltraHighResFrameCaptureCount
{
  v14 = 0u;
  v15 = 0u;
  v12 = 0u;
  v13 = 0u;
  unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
  v4 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v13;
    v8 = *off_1E798C660;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(unifiedBracketedCaptureParams);
        }

        if ([*(*(&v12 + 1) + 8 * i) objectForKeyedSubscript:v8])
        {
          ++v6;
        }
      }

      v5 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  if ((self->_captureFlags & 0x100000000) != 0)
  {
    v6 += [(NSArray *)self->_timeMachineBracketedCaptureParams count];
  }

  return v6;
}

- ($08FEEAFA44411076A5953C2803702ABC)expectedFrameCaptureCounts
{
  if ([(NSArray *)self->_captureFrameInfos count])
  {
    v25 = 0u;
    v26 = 0u;
    v23 = 0u;
    v24 = 0u;
    obj = self->_captureFrameInfos;
    v3 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v22 count:16];
    if (v3)
    {
      v4 = v3;
      v5 = 0;
      v6 = 0;
      v21 = *v24;
      do
      {
        for (i = 0; i != v4; ++i)
        {
          if (*v24 != v21)
          {
            objc_enumerationMutation(obj);
          }

          v8 = *(*(&v23 + 1) + 8 * i);
          v9 = vcnt_s8(([v8 mainFlags] & 0x3000000000000000));
          v9.i16[0] = vaddlv_u8(v9);
          v10 = v9.i32[0];
          v11 = [v8 sifrFlags];
          v12 = [v8 mainFlags];
          v13 = [v8 sifrFlags];
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v10 += [v8 isNoLongErrorRecoveryFrame];
          }

          v14 = vcnt_s8((v12 & 0xC000000000000000));
          v14.i16[0] = vaddlv_u8(v14);
          v15 = v14.i32[0];
          v16 = vcnt_s8((v13 & 0xC000000000000000));
          v16.i16[0] = vaddlv_u8(v16);
          v5 += v15 + v16.i32[0];
          if (self->_captureType == 1)
          {
            v5 += (LODWORD(self->_captureFlags) >> 11) & 1;
          }

          v17 = vcnt_s8((v11 & 0x3000000000000000));
          v17.i16[0] = vaddlv_u8(v17);
          v6 += v17.i32[0] + v10;
        }

        v4 = [(NSArray *)obj countByEnumeratingWithState:&v23 objects:v22 count:16];
      }

      while (v4);
    }

    else
    {
      v5 = 0;
      v6 = 0;
    }
  }

  else
  {
    v6 = [(BWStillImageCaptureStreamSettings *)self expectedFrameCaptureCount];
    v5 = 0;
  }

  v18 = [(BWStillImageCaptureStreamSettings *)self expectedUltraHighResFrameCaptureCount];
  v19 = v6 | ((v5 - v18) << 32);
  result.var0 = v19;
  result.var1 = HIDWORD(v19);
  result.var2 = v18;
  return result;
}

- (int)expectedTimeMachineFrameCaptureCount
{
  timeMachineBracketedCaptureParams = self->_timeMachineBracketedCaptureParams;
  if (!timeMachineBracketedCaptureParams)
  {
    return self->_timeMachineFrameCount;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  v4 = [(NSArray *)timeMachineBracketedCaptureParams countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (!v4)
  {
    return 0;
  }

  v5 = v4;
  v6 = 0;
  v7 = *v12;
  do
  {
    for (i = 0; i != v5; ++i)
    {
      if (*v12 != v7)
      {
        objc_enumerationMutation(timeMachineBracketedCaptureParams);
      }

      v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
    }

    v5 = [(NSArray *)timeMachineBracketedCaptureParams countByEnumeratingWithState:&v11 objects:v10 count:16];
  }

  while (v5);
  return v6;
}

- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 referenceFrameIndex:(int)a6 timeMachineBracketedCaptureParams:(id)a7 preBracketFrameCaptureParams:(id)a8 unifiedBracketedCaptureParams:(id)a9 frameInfos:(id)a10
{
  v13 = *&a4;
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v16 = [a7 countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v16)
  {
    v17 = v16;
    LODWORD(v18) = 0;
    v19 = *v27;
    do
    {
      for (i = 0; i != v17; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(a7);
        }

        v18 = [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?]+ v18;
      }

      v17 = [a7 countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v17);
  }

  else
  {
    v18 = 0;
  }

  v21 = [(BWStillImageCaptureStreamSettings *)self initWithPortType:a3 captureType:v13 captureFlags:a5 timeMachineFrameCount:v18 bracketSettings:0 validBracketedCaptureSequenceNumbers:0];
  v22 = v21;
  if (v21)
  {
    v21->_referenceFrameIndex = a6;
    v21->_timeMachineBracketedCaptureParams = a7;
    v22->_preBracketFrameCaptureParams = a8;
    v22->_unifiedBracketedCaptureParams = a9;
    v22->_captureFrameInfos = a10;
  }

  return v22;
}

- (id)captureFrameInfoForFrame:(opaqueCMSampleBuffer *)a3
{
  v4 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v5 = *off_1E798B760;
  if ([v4 objectForKeyedSubscript:*off_1E798B760])
  {
    v6 = [objc_msgSend(v4 objectForKeyedSubscript:{v5), "intValue"}];
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    captureFrameInfos = self->_captureFrameInfos;
    v8 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v27;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v27 != v10)
        {
          objc_enumerationMutation(captureFrameInfos);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        objc_opt_class();
        if ((objc_opt_isKindOfClass() & 1) != 0 && v6 == [v12 timeMachineIndex])
        {
          return v12;
        }

        if (v9 == ++v11)
        {
          v9 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          return 0;
        }
      }
    }

    return 0;
  }

  if ([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}])
  {
    v13 = 0;
  }

  else
  {
    v13 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
  }

  v23 = 0u;
  v24 = 0u;
  v21 = 0u;
  v22 = 0u;
  v14 = self->_captureFrameInfos;
  v15 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v20 count:16];
  if (!v15)
  {
    return 0;
  }

  v16 = v15;
  v17 = *v22;
LABEL_17:
  v18 = 0;
  while (1)
  {
    if (*v22 != v17)
    {
      objc_enumerationMutation(v14);
    }

    v12 = *(*(&v21 + 1) + 8 * v18);
    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) != 0 && v13 == [v12 bracketedCaptureSequenceNumber])
    {
      return v12;
    }

    if (v16 == ++v18)
    {
      v16 = [(NSArray *)v14 countByEnumeratingWithState:&v21 objects:v20 count:16];
      v12 = 0;
      if (v16)
      {
        goto LABEL_17;
      }

      return v12;
    }
  }
}

- (BOOL)isFrameCapturedForProcessing:(opaqueCMSampleBuffer *)a3
{
  v5 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B5E8), "BOOLValue"}];
  v7 = [v5 objectForKeyedSubscript:*off_1E798B760];
  v8 = [(BWStillImageCaptureStreamSettings *)self captureFrameInfoForFrame:a3];
  if (v8)
  {
    v9 = v8;
    ImageBuffer = CMSampleBufferGetImageBuffer(a3);
    PixelFormatType = CVPixelBufferGetPixelFormatType(ImageBuffer);
    v12 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B540), "isEqualToString:", *off_1E798A0E8}];
    IsVersatileRaw = FigCapturePixelFormatIsVersatileRaw(PixelFormatType);
    if (IsVersatileRaw)
    {
      v14 = 0x8000000000000000;
    }

    else
    {
      v14 = 0x2000000000000000;
    }

    if ((IsVersatileRaw & 1) == 0 && v12)
    {
      if (BWPixelFormatIsFixedPoint(PixelFormatType))
      {
        v14 = 0x8000000000000000;
      }

      else
      {
        v14 = 0x2000000000000000;
      }
    }

    if (v6)
    {
      v15 = [v9 sifrFlags];
    }

    else
    {
      v15 = [v9 mainFlags];
    }

    return (v15 & v14) == 0;
  }

  else if (v7 || !self->_validBracketedCaptureSequenceNumbers)
  {
    return 1;
  }

  else
  {
    if ([objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B558), "BOOLValue"}])
    {
      v17 = 0;
    }

    else
    {
      v17 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
    }

    validBracketedCaptureSequenceNumbers = self->_validBracketedCaptureSequenceNumbers;
    v19 = [MEMORY[0x1E696AD98] numberWithInt:v17];

    return [(NSArray *)validBracketedCaptureSequenceNumbers containsObject:v19];
  }
}

- (BOOL)sensorRawCapturedForFinalImageProcessing
{
  captureFlags = self->_captureFlags;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v3 = [(BWStillImageCaptureStreamSettings *)self captureFrameInfos];
  v4 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    while (2)
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * i);
        if (([v8 mainFlags] & 0x8000000000000000) == 0 || (objc_msgSend(v8, "mainFlags") & 0x2000000000000000) == 0)
        {
          v9 = ([v8 mainFlags] & 0x1000000000000000) == 0;
          return (captureFlags & 4) != 0 && v9;
        }
      }

      v5 = [v3 countByEnumeratingWithState:&v12 objects:v11 count:16];
      v9 = 1;
      if (v5)
      {
        continue;
      }

      break;
    }
  }

  else
  {
    v9 = 1;
  }

  return (captureFlags & 4) != 0 && v9;
}

- (int)expectedEVZeroFrameCount
{
  if ([(NSArray *)self->_captureFrameInfos count])
  {
    v44 = 0uLL;
    v45 = 0uLL;
    v42 = 0uLL;
    v43 = 0uLL;
    captureFrameInfos = self->_captureFrameInfos;
    v4 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v42 objects:v41 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = 0;
      v7 = *v43;
      do
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v43 != v7)
          {
            objc_enumerationMutation(captureFrameInfos);
          }

          v9 = *(*(&v42 + 1) + 8 * i);
          if (([v9 mainFlags] & 2) != 0)
          {
            v10 = vcnt_s8(([v9 mainFlags] & 0x5000000000000000));
            v10.i16[0] = vaddlv_u8(v10);
            v6 += v10.i32[0];
          }
        }

        v5 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v42 objects:v41 count:16];
      }

      while (v5);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v39 = 0uLL;
    v40 = 0uLL;
    v37 = 0uLL;
    v38 = 0uLL;
    timeMachineBracketedCaptureParams = self->_timeMachineBracketedCaptureParams;
    v12 = [(NSArray *)timeMachineBracketedCaptureParams countByEnumeratingWithState:&v37 objects:v36 count:16];
    if (v12)
    {
      v13 = v12;
      v6 = 0;
      v14 = *v38;
      v15 = *off_1E798C698;
      do
      {
        for (j = 0; j != v13; ++j)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(timeMachineBracketedCaptureParams);
          }

          if (![objc_msgSend(*(*(&v37 + 1) + 8 * j) objectForKeyedSubscript:{v15), "intValue"}])
          {
            ++v6;
          }
        }

        v13 = [(NSArray *)timeMachineBracketedCaptureParams countByEnumeratingWithState:&v37 objects:v36 count:16];
      }

      while (v13);
    }

    else
    {
      v6 = 0;
    }

    v34 = 0u;
    v35 = 0u;
    v32 = 0u;
    v33 = 0u;
    obj = self->_unifiedBracketedCaptureParams;
    v17 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v31 count:16];
    if (v17)
    {
      v18 = v17;
      v19 = *v33;
      v20 = *off_1E798C698;
      v21 = *off_1E798C918;
      v22 = *off_1E798C648;
      do
      {
        for (k = 0; k != v18; ++k)
        {
          if (*v33 != v19)
          {
            objc_enumerationMutation(obj);
          }

          v24 = *(*(&v32 + 1) + 8 * k);
          v25 = [objc_msgSend(v24 objectForKeyedSubscript:{v20), "intValue"}];
          v26 = [objc_msgSend(v24 objectForKeyedSubscript:{v21), "intValue"}];
          [objc_msgSend(v24 objectForKeyedSubscript:{v22), "floatValue"}];
          if (v27 == 0.0 && (v25 | v26) == 0)
          {
            ++v6;
          }
        }

        v18 = [(NSArray *)obj countByEnumeratingWithState:&v32 objects:v31 count:16];
      }

      while (v18);
    }
  }

  return v6;
}

- (BOOL)isYUVCapture
{
  if (![(NSArray *)self->_captureFrameInfos count])
  {
LABEL_12:
    LOBYTE(v4) = 1;
    return v4;
  }

  v13 = 0u;
  v14 = 0u;
  v11 = 0u;
  v12 = 0u;
  captureFrameInfos = self->_captureFrameInfos;
  v4 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v11 objects:v10 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v12;
LABEL_4:
    v7 = 0;
    while (1)
    {
      if (*v12 != v6)
      {
        objc_enumerationMutation(captureFrameInfos);
      }

      v8 = *(*(&v11 + 1) + 8 * v7);
      if (([v8 mainFlags] & 0x3000000000000000) != 0 || (objc_msgSend(v8, "sifrFlags") & 0x3000000000000000) != 0)
      {
        goto LABEL_12;
      }

      if (v5 == ++v7)
      {
        v5 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v11 objects:v10 count:16];
        LOBYTE(v4) = 0;
        if (v5)
        {
          goto LABEL_4;
        }

        return v4;
      }
    }
  }

  return v4;
}

- (BOOL)isSensorRawCapture
{
  if ([(NSArray *)self->_captureFrameInfos count])
  {
    v13 = 0u;
    v14 = 0u;
    v11 = 0u;
    v12 = 0u;
    captureFrameInfos = self->_captureFrameInfos;
    v4 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v11 objects:v10 count:16];
    if (v4)
    {
      v5 = v4;
      v6 = *v12;
      while (2)
      {
        for (i = 0; i != v5; ++i)
        {
          if (*v12 != v6)
          {
            objc_enumerationMutation(captureFrameInfos);
          }

          v8 = *(*(&v11 + 1) + 8 * i);
          if ([v8 mainFlags] >> 62 || objc_msgSend(v8, "sifrFlags") >> 62)
          {
            LOBYTE(v4) = 1;
            return v4;
          }
        }

        v5 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v11 objects:v10 count:16];
        LOBYTE(v4) = 0;
        if (v5)
        {
          continue;
        }

        break;
      }
    }
  }

  else
  {
    LODWORD(v4) = (LOBYTE(self->_captureFlags) >> 2) & 1;
  }

  return v4;
}

- (int)resolutionFlavor
{
  if ((self->_captureFlags & 0x100000000) != 0)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  if ((~LODWORD(self->_captureFlags) & 0x14) != 0)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

- (void)cannotProcessDeepFusionEnhancedResolution
{
  captureFlags = self->_captureFlags;
  if ((captureFlags & 0x200000000) != 0)
  {
    self->_captureFlags = captureFlags & 0xFFFFFFFDFFFFFFFFLL;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v29 = 0u;
    unifiedBracketedCaptureParams = self->_unifiedBracketedCaptureParams;
    v5 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v26 objects:v25 count:16];
    if (v5)
    {
      v6 = v5;
      v7 = 0;
      v8 = *v27;
      v9 = *off_1E798C698;
      v10 = *off_1E798C660;
LABEL_4:
      v11 = 0;
      while (1)
      {
        if (*v27 != v8)
        {
          objc_enumerationMutation(unifiedBracketedCaptureParams);
        }

        v12 = *(*(&v26 + 1) + 8 * v11);
        if ([objc_msgSend(v12 objectForKeyedSubscript:{v9), "intValue"}] != 1)
        {
          ++v7;
        }

        if ([v12 objectForKeyedSubscript:v10])
        {
          break;
        }

        if (v6 == ++v11)
        {
          v6 = [(NSArray *)unifiedBracketedCaptureParams countByEnumeratingWithState:&v26 objects:v25 count:16];
          if (v6)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    else
    {
      v7 = 0;
    }

    v13 = [MEMORY[0x1E695DF70] array];
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v24 = 0u;
    captureFrameInfos = self->_captureFrameInfos;
    v15 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v21 objects:v20 count:16];
    if (v15)
    {
      v16 = v15;
      v17 = *v22;
      do
      {
        for (i = 0; i != v16; ++i)
        {
          if (*v22 != v17)
          {
            objc_enumerationMutation(captureFrameInfos);
          }

          v19 = *(*(&v21 + 1) + 8 * i);
          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) == 0 || v7 != [v19 bracketedCaptureSequenceNumber])
          {
            [v13 addObject:v19];
          }
        }

        v16 = [(NSArray *)captureFrameInfos countByEnumeratingWithState:&v21 objects:v20 count:16];
      }

      while (v16);
    }

    self->_captureFrameInfos = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v13];
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

  v22 = [MEMORY[0x1E695DF70] array];
  v25 = 0u;
  v26 = 0u;
  v27 = 0u;
  v28 = 0u;
  obj = self->_captureFrameInfos;
  v8 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
  if (v8)
  {
    v9 = v8;
    v10 = *v26;
    do
    {
      for (i = 0; i != v9; ++i)
      {
        if (*v26 != v10)
        {
          objc_enumerationMutation(obj);
        }

        v12 = *(*(&v25 + 1) + 8 * i);
        v13 = [(BWStillImageCaptureFrameInfo *)v12 mainFlags];
        v14 = [(BWStillImageCaptureFrameInfo *)v12 sifrFlags];
        if ((v14 & 4) != 0)
        {
          v15 = 0;
        }

        else
        {
          v15 = v14;
        }

        if (v5)
        {
          v16 = v15;
        }

        else
        {
          v16 = v14;
        }

        v17 = v13 & 0xFFFFFFFFFFFFFDFFLL;
        if (!v5)
        {
          v17 = v13;
        }

        if ((v17 & 0x200) != 0)
        {
          v18 = 0;
        }

        else
        {
          v18 = v17;
        }

        if (v4)
        {
          v19 = v18;
        }

        else
        {
          v19 = v17;
        }

        if (v19 == [(BWStillImageCaptureFrameInfo *)v12 mainFlags]&& v16 == [(BWStillImageCaptureFrameInfo *)v12 sifrFlags])
        {
          goto LABEL_27;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = [BWStillImageCaptureBracketFrameInfo infoWithBracketedCaptureSequenceNumber:[(BWStillImageCaptureBracketFrameInfo *)v12 bracketedCaptureSequenceNumber] mainFlags:v19 sifrFlags:v16];
LABEL_27:
          if (!v12)
          {
            continue;
          }

LABEL_28:
          [v22 addObject:v12];
          continue;
        }

        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v20 = [BWStillImageCaptureTimeMachineFrameInfo infoWithTimeMachineIndex:[(BWStillImageCaptureBracketFrameInfo *)v12 timeMachineIndex] mainFlags:v19 sifrFlags:v16];
          [(BWStillImageCaptureTimeMachineFrameInfo *)v20 setIsNoLongErrorRecoveryFrame:[(BWStillImageCaptureBracketFrameInfo *)v12 isNoLongErrorRecoveryFrame]];
          v12 = v20;
          if (v20)
          {
            goto LABEL_28;
          }
        }
      }

      v9 = [(NSArray *)obj countByEnumeratingWithState:&v25 objects:v24 count:16];
    }

    while (v9);
  }

  self->_captureFrameInfos = [objc_alloc(MEMORY[0x1E695DEC8]) initWithArray:v22];
}

- (BOOL)isUnifiedBracketingErrorRecoveryFrame:(opaqueCMSampleBuffer *)a3 isReferenceFrame:(BOOL)a4
{
  v6 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if ((self->_captureFlags & 4) != 0)
  {
    p_adaptiveBracketingParameters = &self->_adaptiveBracketingParameters;
    if (!self->_adaptiveBracketingParameters)
    {
      goto LABEL_8;
    }
  }

  else
  {
    v7 = [(NSDictionary *)self->_preBracketFrameCaptureParams count];
    p_adaptiveBracketingParameters = &self->_adaptiveBracketingParameters;
    if (!self->_adaptiveBracketingParameters)
    {
      if (!v7)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }
  }

  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v9 = [objc_msgSend(-[NSMutableArray firstObject](self->_adaptivePreBracketFrameCaptureParams "firstObject")];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  if (v9)
  {
    if (*p_adaptiveBracketingParameters)
    {
      return a4;
    }

LABEL_8:
    captureFlags = self->_captureFlags;
    if ((captureFlags & 0x100) == 0 && (captureFlags & 0x2800000) != 0)
    {
      return [objc_msgSend(v6 objectForKeyedSubscript:{*off_1E798B788), "intValue"}] == 0;
    }

    return a4;
  }

LABEL_12:
  v12 = [v6 objectForKeyedSubscript:*off_1E798B558];

  return [v12 BOOLValue];
}

- (BWStillImageCaptureStreamSettings)initWithPortType:(id)a3 captureType:(int)a4 captureFlags:(unint64_t)a5 referenceFrameIndex:(int)a6 adaptiveBracketingParameters:(id)a7 sphereOffsets:(id)a8
{
  v10 = [(BWStillImageCaptureStreamSettings *)self initWithPortType:a3 captureType:*&a4 captureFlags:a5 referenceFrameIndex:*&a6 timeMachineBracketedCaptureParams:0 preBracketFrameCaptureParams:0 unifiedBracketedCaptureParams:0 frameInfos:0];
  v11 = v10;
  if (v10)
  {
    v10->_adaptiveBracketingLock._os_unfair_lock_opaque = 0;
    v10->_adaptiveBracketingParameters = a7;
    v11->_adaptiveBracketingSphereOffsets = a8;
  }

  return v11;
}

- (id)adaptiveTimeMachineBracketedCaptureParams
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v3 = [(NSMutableArray *)self->_adaptiveTimeMachineBracketedCaptureParams copy];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);

  return v3;
}

- (id)adaptivePreBracketFrameCaptureParams
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v3 = [(NSMutableArray *)self->_adaptivePreBracketFrameCaptureParams copy];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);

  return v3;
}

- (id)adaptiveUnifiedBracketedCaptureParams
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v3 = [(NSMutableArray *)self->_adaptiveUnifiedBracketedCaptureParams copy];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);

  return v3;
}

- (int)adaptiveBracketingGroupCaptureCount
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v3 = [(NSMutableArray *)self->_adaptiveUnifiedBracketedCaptureParams count];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return v3;
}

- (int)currentExpectedAdaptiveBracketedFrameCount
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v28 = 0u;
  v29 = 0u;
  v26 = 0u;
  v27 = 0u;
  v17 = self;
  obj = self->_adaptiveCaptureFrameInfos;
  v3 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
  if (v3)
  {
    v4 = v3;
    v5 = 0;
    v19 = *v27;
    do
    {
      for (i = 0; i != v4; ++i)
      {
        if (*v27 != v19)
        {
          objc_enumerationMutation(obj);
        }

        v7 = *(*(&v26 + 1) + 8 * i);
        v21 = 0u;
        v22 = 0u;
        v23 = 0u;
        v24 = 0u;
        v8 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
        if (v8)
        {
          v9 = v8;
          v10 = *v22;
          do
          {
            for (j = 0; j != v9; ++j)
            {
              if (*v22 != v10)
              {
                objc_enumerationMutation(v7);
              }

              v12 = *(*(&v21 + 1) + 8 * j);
              v13 = vcnt_s8(([v12 mainFlags] & 0x5000000000000000));
              v13.i16[0] = vaddlv_u8(v13);
              v14 = v13.i32[0];
              v15 = vcnt_s8(([v12 sifrFlags] & 0x5000000000000000));
              v15.i16[0] = vaddlv_u8(v15);
              v5 += v14 + v15.i32[0];
            }

            v9 = [v7 countByEnumeratingWithState:&v21 objects:v20 count:16];
          }

          while (v9);
        }
      }

      v4 = [(NSMutableArray *)obj countByEnumeratingWithState:&v26 objects:v25 count:16];
    }

    while (v4);
  }

  else
  {
    v5 = 0;
  }

  os_unfair_lock_unlock(&v17->_adaptiveBracketingLock);
  return v5;
}

- (int)currentExpectedAdaptiveBracketedFrameCaptureCount
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v53 = 0u;
  v54 = 0u;
  v51 = 0u;
  v52 = 0u;
  adaptiveTimeMachineBracketedCaptureParams = self->_adaptiveTimeMachineBracketedCaptureParams;
  v4 = [(NSMutableArray *)adaptiveTimeMachineBracketedCaptureParams countByEnumeratingWithState:&v51 objects:v50 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    v7 = *v52;
    do
    {
      for (i = 0; i != v5; ++i)
      {
        if (*v52 != v7)
        {
          objc_enumerationMutation(adaptiveTimeMachineBracketedCaptureParams);
        }

        v9 = *(*(&v51 + 1) + 8 * i);
        v46 = 0u;
        v47 = 0u;
        v48 = 0u;
        v49 = 0u;
        v10 = [v9 countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v10)
        {
          v11 = v10;
          v12 = *v47;
          do
          {
            for (j = 0; j != v11; ++j)
            {
              if (*v47 != v12)
              {
                objc_enumerationMutation(v9);
              }

              v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
            }

            v11 = [v9 countByEnumeratingWithState:&v46 objects:v45 count:16];
          }

          while (v11);
        }
      }

      v5 = [(NSMutableArray *)adaptiveTimeMachineBracketedCaptureParams countByEnumeratingWithState:&v51 objects:v50 count:16];
    }

    while (v5);
  }

  else
  {
    v6 = 0;
  }

  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  adaptivePreBracketFrameCaptureParams = self->_adaptivePreBracketFrameCaptureParams;
  v15 = [(NSMutableArray *)adaptivePreBracketFrameCaptureParams countByEnumeratingWithState:&v41 objects:v40 count:16];
  if (v15)
  {
    v16 = v15;
    v17 = *v42;
    do
    {
      for (k = 0; k != v16; ++k)
      {
        if (*v42 != v17)
        {
          objc_enumerationMutation(adaptivePreBracketFrameCaptureParams);
        }

        v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
      }

      v16 = [(NSMutableArray *)adaptivePreBracketFrameCaptureParams countByEnumeratingWithState:&v41 objects:v40 count:16];
    }

    while (v16);
  }

  v38 = 0u;
  v39 = 0u;
  v36 = 0u;
  v37 = 0u;
  adaptiveUnifiedBracketedCaptureParams = self->_adaptiveUnifiedBracketedCaptureParams;
  v20 = [(NSMutableArray *)adaptiveUnifiedBracketedCaptureParams countByEnumeratingWithState:&v36 objects:v35 count:16];
  if (v20)
  {
    v21 = v20;
    v22 = *v37;
    do
    {
      for (m = 0; m != v21; ++m)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(adaptiveUnifiedBracketedCaptureParams);
        }

        v24 = *(*(&v36 + 1) + 8 * m);
        v31 = 0u;
        v32 = 0u;
        v33 = 0u;
        v34 = 0u;
        v25 = [v24 countByEnumeratingWithState:&v31 objects:v30 count:16];
        if (v25)
        {
          v26 = v25;
          v27 = *v32;
          do
          {
            for (n = 0; n != v26; ++n)
            {
              if (*v32 != v27)
              {
                objc_enumerationMutation(v24);
              }

              v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
            }

            v26 = [v24 countByEnumeratingWithState:&v31 objects:v30 count:16];
          }

          while (v26);
        }
      }

      v21 = [(NSMutableArray *)adaptiveUnifiedBracketedCaptureParams countByEnumeratingWithState:&v36 objects:v35 count:16];
    }

    while (v21);
  }

  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return v6;
}

- (id)adaptiveBracketingSphereOffsetsForNextGroupWithFrameCount:(int)a3
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  if ([(NSMutableArray *)self->_adaptiveUnifiedBracketedCaptureParams count])
  {
    v5 = 0;
    v6 = 0;
    do
    {
      v18 = 0u;
      v19 = 0u;
      v16 = 0u;
      v17 = 0u;
      v7 = [(NSMutableArray *)self->_adaptiveUnifiedBracketedCaptureParams objectAtIndexedSubscript:v5];
      v8 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
      if (v8)
      {
        v9 = v8;
        v10 = *v17;
        do
        {
          v11 = 0;
          do
          {
            if (*v17 != v10)
            {
              objc_enumerationMutation(v7);
            }

            v6 += [(BWStillImageCaptureStreamSettings *)self _expectedFrameCaptureCountForFrameParams:?];
          }

          while (v9 != v11);
          v9 = [v7 countByEnumeratingWithState:&v16 objects:v15 count:16];
        }

        while (v9);
      }

      ++v5;
    }

    while ([(NSMutableArray *)self->_adaptiveUnifiedBracketedCaptureParams count]> v5);
    v12 = v6;
  }

  else
  {
    v12 = 0;
  }

  v13 = [(NSArray *)self->_adaptiveBracketingSphereOffsets subarrayWithRange:v12, a3];
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return v13;
}

BOOL __79__BWStillImageCaptureStreamSettings_adaptiveBracketingFrameParametersForFrame___block_invoke(uint64_t a1, void *a2)
{
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    v3 = [a2 bracketedCaptureSequenceNumber] == 0;
  }

  else
  {
    v3 = ([a2 mainFlags] & 0x5000000000000000) == 0;
  }

  return !v3;
}

- (BOOL)reachedEndOfAdaptiveBracketing
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  reachedEndOfAdaptiveBracketing = self->_reachedEndOfAdaptiveBracketing;
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return reachedEndOfAdaptiveBracketing;
}

- (void)setReachedEndOfAdaptiveBracketing:(BOOL)a3
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  self->_reachedEndOfAdaptiveBracketing = a3;

  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adaptiveBracketingLastFramePTS
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  *&retstr->var0 = *(&self->_reachedEndOfAdaptiveBracketing + 4);
  retstr->var3 = *&self->_adaptiveBracketingLastFramePTS.flags;

  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return result;
}

- (void)setAdaptiveBracketingLastFramePTS:(id *)a3
{
  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v5 = *&a3->var0;
  *&self->_adaptiveBracketingLastFramePTS.flags = a3->var3;
  *(&self->_reachedEndOfAdaptiveBracketing + 4) = v5;

  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
}

- (void)setPreferredTimeMachinePTS:(id *)a3
{
  v3 = *&a3->var0;
  self->_preferredTimeMachinePTS.epoch = a3->var3;
  *&self->_preferredTimeMachinePTS.value = v3;
}

- (uint64_t)_expectedFrameCaptureCountForFrameParams:(uint64_t)a1
{
  result = 0;
  if (a1 && a2)
  {
    if ([a2 objectForKeyedSubscript:@"BWAdaptiveBracketingNoPreBracketFrameParams"])
    {
      return 0;
    }

    else
    {
      v5 = *off_1E798ABD8;
      if ([a2 objectForKeyedSubscript:*off_1E798ABD8])
      {
        v6.i32[0] = [objc_msgSend(a2 objectForKeyedSubscript:{v5), "intValue"}];
        v7 = vcnt_s8(v6);
        v7.i16[0] = vaddlv_u8(v7);
        return v7.u32[0];
      }

      else
      {
        return [objc_msgSend(a2 objectForKeyedSubscript:{*off_1E798C600), "BOOLValue"}] ^ 1;
      }
    }
  }

  return result;
}

- (BOOL)hasCaptureFrameInfoWithMainFlags:(unint64_t)a3 sifrFlags:(unint64_t)a4
{
  v7 = [(NSArray *)self->_captureFrameInfos count];
  if (v7)
  {
    OUTLINED_FUNCTION_1_13();
    captureFrameInfos = self->_captureFrameInfos;
    OUTLINED_FUNCTION_43();
    v7 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
    if (v7)
    {
      v9 = v7;
      v10 = *v16;
      while (2)
      {
        v11 = 0;
        do
        {
          OUTLINED_FUNCTION_4_10();
          if (v12 != v10)
          {
            objc_enumerationMutation(captureFrameInfos);
          }

          v13 = *(v15 + 8 * v11);
          if ((a3 & ~[v13 mainFlags]) == 0 && (a4 & ~objc_msgSend(v13, "sifrFlags")) == 0)
          {
            LOBYTE(v7) = 1;
            return v7;
          }

          ++v11;
        }

        while (v9 != v11);
        OUTLINED_FUNCTION_43();
        v7 = [NSArray countByEnumeratingWithState:"countByEnumeratingWithState:objects:count:" objects:? count:?];
        v9 = v7;
        if (v7)
        {
          continue;
        }

        break;
      }
    }
  }

  return v7;
}

- (int)timeMachineReferenceFrameIndex
{
  if ([(NSArray *)self->_timeMachineBracketedCaptureParams count])
  {
    if ([(NSArray *)self->_captureFrameInfos count])
    {
      OUTLINED_FUNCTION_1_13();
      captureFrameInfos = self->_captureFrameInfos;
      v12 = OUTLINED_FUNCTION_2_0(v4, v5, v6, v7, v8, v9, v10, v11, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59);
      if (v12)
      {
        v13 = v12;
        v14 = *v62;
        while (2)
        {
          v15 = 0;
          do
          {
            OUTLINED_FUNCTION_4_10();
            if (v16 != v14)
            {
              objc_enumerationMutation(captureFrameInfos);
            }

            v17 = *(v61 + 8 * v15);
            objc_opt_class();
            isKindOfClass = objc_opt_isKindOfClass();
            if (isKindOfClass)
            {
              isKindOfClass = [v17 mainFlags];
              if ((isKindOfClass & 0x10) != 0)
              {
                return [v17 timeMachineIndex];
              }
            }

            ++v15;
          }

          while (v13 != v15);
          v13 = OUTLINED_FUNCTION_2_0(isKindOfClass, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60);
          if (v13)
          {
            continue;
          }

          break;
        }
      }
    }
  }

  return -1;
}

- (int)expectedLongFrameCount
{
  if (![(NSArray *)self->_captureFrameInfos count])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_13();
  captureFrameInfos = self->_captureFrameInfos;
  if (!OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v27, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59))
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_11();
  do
  {
    v15 = 0;
    do
    {
      OUTLINED_FUNCTION_4_10();
      if (v16 != v4)
      {
        objc_enumerationMutation(captureFrameInfos);
      }

      v17 = *(v61 + 8 * v15);
      v18 = [v17 mainFlags];
      if ((v18 & 8) != 0)
      {
        OUTLINED_FUNCTION_0_17([v17 mainFlags]);
      }

      ++v15;
    }

    while (v3 != v15);
    v3 = OUTLINED_FUNCTION_2_0(v18, v19, v20, v21, v22, v23, v24, v25, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60);
  }

  while (v3);
  return v2;
}

- (int)expectedReferenceFrameCandidateCount
{
  if (![(NSArray *)self->_captureFrameInfos count])
  {
    return 0;
  }

  OUTLINED_FUNCTION_1_13();
  captureFrameInfos = self->_captureFrameInfos;
  if (!OUTLINED_FUNCTION_2_0(v7, v8, v9, v10, v11, v12, v13, v14, v28, v30, v32, v34, v36, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60))
  {
    return 0;
  }

  OUTLINED_FUNCTION_7_11();
  do
  {
    v15 = 0;
    do
    {
      OUTLINED_FUNCTION_4_10();
      if (v16 != v4)
      {
        objc_enumerationMutation(captureFrameInfos);
      }

      v17 = *(v62 + 8 * v15);
      if (([v17 mainFlags] & 0x100) != 0)
      {
        *&v18 = OUTLINED_FUNCTION_0_17([v17 mainFlags]);
      }

      v19 = [v17 sifrFlags];
      if ((v19 & 0x100) != 0)
      {
        OUTLINED_FUNCTION_0_17([v17 sifrFlags]);
      }

      ++v15;
    }

    while (v3 != v15);
    v3 = OUTLINED_FUNCTION_2_0(v19, v20, v21, v22, v23, v24, v25, v26, v29, v31, v33, v35, v37, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61);
  }

  while (v3);
  return v2;
}

- (int)expectedAdaptiveBracketedFrameCaptureCountUsingGroup:(int)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_11(self);
  OUTLINED_FUNCTION_6_9();
  do
  {
    if ([*(v3 + 152) count] <= v5)
    {
      break;
    }

    v18 = 0u;
    v19 = 0u;
    v16 = 0u;
    v17 = 0u;
    v7 = [*(v3 + 152) objectAtIndexedSubscript:v5];
    if ([v7 countByEnumeratingWithState:&v16 objects:v15 count:16])
    {
      v8 = *v17;
      do
      {
        if (*v17 != v8)
        {
          objc_enumerationMutation(v7);
        }

        [(BWStillImageCaptureStreamSettings *)v3 _expectedFrameCaptureCountForFrameParams:?];
        OUTLINED_FUNCTION_5_16();
      }

      while (!v9 || [v7 countByEnumeratingWithState:&v16 objects:v15 count:16]);
    }

    v4 += -[BWStillImageCaptureStreamSettings _expectedFrameCaptureCountForFrameParams:](v3, [*(v3 + 160) objectAtIndexedSubscript:v5]);
    v10 = [*(v3 + 168) objectAtIndexedSubscript:v5];
    OUTLINED_FUNCTION_43();
    if ([v11 countByEnumeratingWithState:? objects:? count:?])
    {
      v12 = MEMORY[0];
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v13 != v12)
        {
          objc_enumerationMutation(v10);
        }

        [(BWStillImageCaptureStreamSettings *)v3 _expectedFrameCaptureCountForFrameParams:?];
        OUTLINED_FUNCTION_5_16();
        if (v9)
        {
          OUTLINED_FUNCTION_43();
          if (![v10 countByEnumeratingWithState:? objects:? count:?])
          {
            break;
          }
        }
      }
    }

    ++v5;
  }

  while (v5 != v6);
  os_unfair_lock_unlock((v3 + 124));
  return v4;
}

- (int)expectedAdaptiveBracketedTimeMachineFrameCountUsingGroup:(int)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_11(self);
  OUTLINED_FUNCTION_6_9();
  do
  {
    if ([*(v3 + 176) count] <= v5)
    {
      break;
    }

    v7 = [*(v3 + 176) objectAtIndexedSubscript:v5];
    v4 += [objc_msgSend(v7 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_7)), "count"}];
    ++v5;
  }

  while (v6 != v5);
  os_unfair_lock_unlock((v3 + 124));
  return v4;
}

- (int)expectedAdaptiveBracketedTimeMachineFrameCaptureCountUsingGroup:(int)a3
{
  if (a3 < 1)
  {
    return 0;
  }

  OUTLINED_FUNCTION_8_11(self);
  OUTLINED_FUNCTION_6_9();
  do
  {
    if ([*(v3 + 152) count] <= v5)
    {
      break;
    }

    v7 = [*(v3 + 152) objectAtIndexedSubscript:{v5, OUTLINED_FUNCTION_1_13()}];
    OUTLINED_FUNCTION_43();
    if ([v8 countByEnumeratingWithState:? objects:? count:?])
    {
      v9 = *v14;
      while (1)
      {
        OUTLINED_FUNCTION_4_10();
        if (v10 != v9)
        {
          objc_enumerationMutation(v7);
        }

        [(BWStillImageCaptureStreamSettings *)v3 _expectedFrameCaptureCountForFrameParams:?];
        OUTLINED_FUNCTION_5_16();
        if (v11)
        {
          OUTLINED_FUNCTION_43();
          if (![v7 countByEnumeratingWithState:? objects:? count:?])
          {
            break;
          }
        }
      }
    }

    ++v5;
  }

  while (v5 != v6);
  os_unfair_lock_unlock((v3 + 124));
  return v4;
}

- (void)addAdaptiveBracketingMetadataIfNeededForFrame:(opaqueCMSampleBuffer *)a3
{
  if (self->_adaptiveBracketingParameters)
  {
    if ((BWStillImageCaptureFrameFlagsForSampleBuffer(a3) & 0x5000000000000000) != 0)
    {
      v5 = [(BWStillImageCaptureStreamSettings *)self adaptiveBracketingGroupCaptureCount];
      if (v5 >= 1)
      {
        v6 = v5;
        v7 = CMGetAttachment(a3, *off_1E798A3C8, 0);
        [v7 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v6), *off_1E798A538}];
        v8 = *off_1E798B760;
        if ([v7 objectForKeyedSubscript:*off_1E798B760])
        {
          if (([objc_msgSend(v7 objectForKeyedSubscript:{v8), "intValue"}] & 0x80000000) == 0)
          {
            if ([(BWStillImageCaptureStreamSettings *)self adaptiveBracketingFrameParametersForFrame:a3])
            {
              [objc_msgSend(v7 objectForKeyedSubscript:{*off_1E798B2A8), "doubleValue"}];
              FigCaptureComputeImageGainFromMetadata();
            }
          }
        }
      }
    }
  }
}

- (id)adaptiveBracketingFrameParametersForFrame:(opaqueCMSampleBuffer *)a3
{
  if ((BWStillImageCaptureFrameFlagsForSampleBuffer(a3) & 0x5000000000000000) == 0)
  {
    goto LABEL_8;
  }

  v5 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  v6 = [objc_msgSend(v5 objectForKeyedSubscript:{*off_1E798A538), "intValue"}];
  v7 = (v6 - 1);
  if (v6 < 1)
  {
    goto LABEL_8;
  }

  v8 = *off_1E798B760;
  if ([v5 objectForKeyedSubscript:*off_1E798B760])
  {
    v9 = [objc_msgSend(v5 objectForKeyedSubscript:{v8), "intValue"}];
  }

  else
  {
    v9 = -1;
  }

  v10 = *off_1E798B1B8;
  if ([v5 objectForKeyedSubscript:*off_1E798B1B8])
  {
    v11 = [objc_msgSend(v5 objectForKeyedSubscript:{v10), "intValue"}];
    if (!v11)
    {
LABEL_8:
      v12 = 0;
      goto LABEL_23;
    }
  }

  else
  {
    v11 = -1;
  }

  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v13 = [(NSMutableArray *)self->_adaptiveBracketingFrameParameters objectAtIndexedSubscript:v7];
  v14 = [(NSMutableArray *)self->_adaptiveCaptureFrameInfos objectAtIndexedSubscript:v7];
  v15 = [v14 filteredArrayUsingPredicate:{objc_msgSend(MEMORY[0x1E696AE18], "predicateWithBlock:", &__block_literal_global_317)}];
  v16 = [v13 count];
  if (v16 != [v15 count] || !objc_msgSend(v15, "count"))
  {
LABEL_21:
    v12 = 0;
    goto LABEL_22;
  }

  v17 = 0;
  while (1)
  {
    v18 = [v15 objectAtIndexedSubscript:v17];
    if (v9 < 0)
    {
      break;
    }

    objc_opt_class();
    if ((objc_opt_isKindOfClass() & 1) == 0)
    {
      break;
    }

    if (v9 == [v18 timeMachineIndex])
    {
      goto LABEL_26;
    }

LABEL_20:
    if ([v15 count] <= ++v17)
    {
      goto LABEL_21;
    }
  }

  if (v11 < 1)
  {
    goto LABEL_20;
  }

  objc_opt_class();
  if ((objc_opt_isKindOfClass() & 1) == 0 || v11 != [v18 bracketedCaptureSequenceNumber])
  {
    goto LABEL_20;
  }

LABEL_26:
  v12 = [v13 objectAtIndexedSubscript:v17];
LABEL_22:
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
LABEL_23:
  v19 = v12;

  return v19;
}

- (BOOL)isFirstAdaptiveBracketingFrame:(opaqueCMSampleBuffer *)a3
{
  v4 = CMGetAttachment(a3, *off_1E798A3C8, 0);
  if ([objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798A538), "intValue"}] != 1)
  {
    return 0;
  }

  os_unfair_lock_lock(&self->_adaptiveBracketingLock);
  v5 = [(NSMutableArray *)self->_adaptiveCaptureFrameInfos firstObject];
  OUTLINED_FUNCTION_43();
  v7 = [v6 countByEnumeratingWithState:? objects:? count:?];
  if (v7)
  {
    v8 = v7;
    v9 = *v18;
    while (2)
    {
      for (i = 0; i != v8; ++i)
      {
        OUTLINED_FUNCTION_4_10();
        if (v11 != v9)
        {
          objc_enumerationMutation(v5);
        }

        v12 = *(v17 + 8 * i);
        if (([v12 mainFlags] & 0x5000000000000000) != 0)
        {
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            v14 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B760), "intValue"}];
            v15 = [v12 timeMachineIndex];
LABEL_16:
            v13 = v15 == v14;
            goto LABEL_17;
          }

          objc_opt_class();
          if ((objc_opt_isKindOfClass() & 1) != 0 && [v12 bracketedCaptureSequenceNumber] >= 1)
          {
            v14 = [objc_msgSend(v4 objectForKeyedSubscript:{*off_1E798B1B8), "intValue"}];
            v15 = [v12 bracketedCaptureSequenceNumber];
            goto LABEL_16;
          }
        }
      }

      OUTLINED_FUNCTION_43();
      v8 = [v5 countByEnumeratingWithState:? objects:? count:?];
      if (v8)
      {
        continue;
      }

      break;
    }
  }

  v13 = 0;
LABEL_17:
  os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  return v13;
}

- (void)addAdaptiveBracketingFrameParameters:(id)a3 timeMachineBracketedCaptureParams:(id)a4 preBracketFrameCaptureParams:(id)a5 unifiedBracketedCaptureParams:(id)a6 captureFrameInfos:(id)a7
{
  if (a6)
  {
    os_unfair_lock_lock(&self->_adaptiveBracketingLock);
    adaptiveBracketingFrameParameters = self->_adaptiveBracketingFrameParameters;
    if (!adaptiveBracketingFrameParameters)
    {
      adaptiveBracketingFrameParameters = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_adaptiveBracketingFrameParameters = adaptiveBracketingFrameParameters;
    }

    [(NSMutableArray *)adaptiveBracketingFrameParameters addObject:a3];
    adaptiveTimeMachineBracketedCaptureParams = self->_adaptiveTimeMachineBracketedCaptureParams;
    if (!adaptiveTimeMachineBracketedCaptureParams)
    {
      adaptiveTimeMachineBracketedCaptureParams = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_adaptiveTimeMachineBracketedCaptureParams = adaptiveTimeMachineBracketedCaptureParams;
    }

    if (!a4)
    {
      a4 = MEMORY[0x1E695E0F0];
    }

    [(NSMutableArray *)adaptiveTimeMachineBracketedCaptureParams addObject:a4];

    self->_timeMachineBracketedCaptureParams = a4;
    adaptivePreBracketFrameCaptureParams = self->_adaptivePreBracketFrameCaptureParams;
    if (!adaptivePreBracketFrameCaptureParams)
    {
      adaptivePreBracketFrameCaptureParams = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_adaptivePreBracketFrameCaptureParams = adaptivePreBracketFrameCaptureParams;
    }

    v16 = a5;
    if (!a5)
    {
      v19 = @"BWAdaptiveBracketingNoPreBracketFrameParams";
      v20 = &stru_1F216A3D0;
      v16 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v20 forKeys:&v19 count:1];
    }

    [(NSMutableArray *)adaptivePreBracketFrameCaptureParams addObject:v16];

    self->_preBracketFrameCaptureParams = a5;
    adaptiveUnifiedBracketedCaptureParams = self->_adaptiveUnifiedBracketedCaptureParams;
    if (!adaptiveUnifiedBracketedCaptureParams)
    {
      adaptiveUnifiedBracketedCaptureParams = objc_alloc_init(MEMORY[0x1E695DF70]);
      self->_adaptiveUnifiedBracketedCaptureParams = adaptiveUnifiedBracketedCaptureParams;
    }

    [(NSMutableArray *)adaptiveUnifiedBracketedCaptureParams addObject:a6];

    self->_unifiedBracketedCaptureParams = a6;
    if (a7)
    {
      adaptiveCaptureFrameInfos = self->_adaptiveCaptureFrameInfos;
      if (!adaptiveCaptureFrameInfos)
      {
        adaptiveCaptureFrameInfos = objc_alloc_init(MEMORY[0x1E695DF70]);
        self->_adaptiveCaptureFrameInfos = adaptiveCaptureFrameInfos;
      }

      [(NSMutableArray *)adaptiveCaptureFrameInfos addObject:a7];

      self->_captureFrameInfos = a7;
    }

    os_unfair_lock_unlock(&self->_adaptiveBracketingLock);
  }
}

@end