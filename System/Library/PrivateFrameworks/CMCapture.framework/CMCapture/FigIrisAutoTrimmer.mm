@interface FigIrisAutoTrimmer
+ (void)initialize;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginTrimmingForStillImageHostPTS:(SEL)s minimumPTS:(id *)tS;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxHoldDuration;
- (BOOL)_isUnstable:(void *)unstable withLookback:;
- (BOOL)_shouldCut:(void *)cut withLookahead:(void *)lookahead withLookback:;
- (BOOL)_shouldCutSVM:(_BOOL8)result;
- (BOOL)_shouldCutUnstable:(void *)unstable withLookahead:;
- (FigIrisAutoTrimmer)init;
- (Float64)_getHostTime;
- (double)_timeoutThreshold;
- (double)_updateStorageStats;
- (float)_computeVitalityFrom:(uint64_t)from to:;
- (float)computeVitalityScoreForStillImageHostPTS:(id *)s movieRange:(id *)range;
- (id)exportMotionSamples;
- (int)emissionStatusForHostPTS:(id *)s;
- (uint64_t)_checkSamplesContainHostTime:(uint64_t)result;
- (uint64_t)_directionalWeightForSample:(uint64_t)result;
- (uint64_t)_findClosestIndexToHostTime:(uint64_t)time fromIndex:(uint64_t)index limitIndex:;
- (unint64_t)_findClosestIndexToOffset:(int64_t)offset atLeastOneFromIndex:(double)index limitIndex:;
- (unint64_t)_findClosestIndexToTimestamp:(int64_t)timestamp fromIndex:(double)index limitIndex:;
- (void)_initSVM:(uint64_t)m fromFile:(void *)file;
- (void)_processMotionSample:(uint64_t)sample gravity:(__int128 *)gravity motionTimestamp:(void *)timestamp frameTimestamp:(double)frameTimestamp metadata:;
- (void)dealloc;
- (void)processCountOfVisibleVitalityObjects:(int)objects forHostTime:(id *)time;
- (void)processISPMotionData:(id)data forHostTime:(id *)time;
- (void)processInferences:(id)inferences forHostTime:(id *)time;
- (void)setMaxHoldDuration:(id *)duration;
- (void)setVitalityScoringSmartCameraPipelineVersion:(id)version;
@end

@implementation FigIrisAutoTrimmer

- (FigIrisAutoTrimmer)init
{
  v9.receiver = self;
  v9.super_class = FigIrisAutoTrimmer;
  v2 = [(FigIrisAutoTrimmer *)&v9 init];
  v3 = v2;
  if (v2)
  {
    v2[56] = 0;
    v4 = MEMORY[0x1E6960C70];
    *(v2 + 204) = *MEMORY[0x1E6960C70];
    *(v2 + 220) = *(v4 + 16);
    *(v2 + 15) = xmmword_1AD056B60;
    *(v2 + 32) = 68;
    *(v2 + 29) = 68;
    *(v2 + 34) = 4;
    *(v2 + 23) = [objc_alloc(MEMORY[0x1E695DF70]) initWithCapacity:*(v2 + 32)];
    *(v3 + 268) = -1082130432;
    v5 = CFPreferencesCopyAppValue(@"iris_autotrim_svm", @"com.apple.coremedia");
    if (v5)
    {
      v6 = v5;
      v7 = [MEMORY[0x1E695DF20] dictionaryWithContentsOfFile:v5];
      if (v7)
      {
        [FigIrisAutoTrimmer _initSVM:v3 fromFile:v7];
      }

      CFRelease(v6);
    }
  }

  return v3;
}

- (double)_updateStorageStats
{
  if (self)
  {
    v2 = *(self + 248);
    v4 = *(self + 204);
    *(self + 232) = vcvtmd_s64_f64(v2 * CMTimeGetSeconds(&v4));
    result = *(self + 248) * (*(self + 240) + 0.266666667);
    *(self + 256) = vcvtpd_u64_f64(result);
  }

  return result;
}

+ (void)initialize
{
  if (objc_opt_class() == self)
  {
    FigGetCFPreferenceDoubleWithDefault();
    sMotionThreshold = v2;
    FigGetCFPreferenceDoubleWithDefault();
    sBadAccelThreshold = v3;
    sEnableAllLoggingNoTrim = FigGetCFPreferenceNumberWithDefault();
  }
}

- (void)dealloc
{
  motionSamples = self->_motionSamples;
  if (motionSamples)
  {
    CFRelease(motionSamples);
    self->_motionSamples = 0;
  }

  svmKeys = self->_svmKeys;
  if (svmKeys)
  {
    CFRelease(svmKeys);
    self->_svmKeys = 0;
  }

  svmNormalization = self->_svmNormalization;
  if (svmNormalization)
  {
    CFRelease(svmNormalization);
    self->_svmNormalization = 0;
  }

  svmVectors = self->_svmVectors;
  if (svmVectors)
  {
    CFRelease(svmVectors);
    self->_svmVectors = 0;
  }

  v7.receiver = self;
  v7.super_class = FigIrisAutoTrimmer;
  [(FigIrisAutoTrimmer *)&v7 dealloc];
}

- (void)processISPMotionData:(id)data forHostTime:(id *)time
{
  v4 = MEMORY[0x1EEE9AC00](self);
  if (v5)
  {
    v7 = v6;
    v8 = v4;
    v9 = *off_1E798B3D0;
    v23 = *off_1E798B3D0;
    v24 = v5;
    v10 = [MEMORY[0x1E695DF20] dictionaryWithObjects:&v24 forKeys:&v23 count:1];
    bzero(v22, 0x14A0uLL);
    v20 = 0;
    v21 = 0;
    if (FigMotionGetMotionDataFromISP(v10, v22, 0, 110, &v21 + 1, &v20, 0, 0, 0))
    {
      [FigIrisAutoTrimmer processISPMotionData:forHostTime:];
    }

    else if (SHIDWORD(v21) < 1)
    {
      ++processISPMotionData_forHostTime__missingFrames;
      [v10 objectForKeyedSubscript:v9];
      FigMotionHardwareAvailable();
    }

    else
    {
      processISPMotionData_forHostTime__missingFrames = 0;
      time = *v7;
      Seconds = CMTimeGetSeconds(&time);
      if (SHIDWORD(v21) >= 1)
      {
        v12 = 0;
        v13 = &v22[0].f64[1];
        v14 = -1;
        v15 = INFINITY;
        do
        {
          v16 = vabdd_f64(*v13, Seconds);
          if (v16 >= v15)
          {
            if (v15 < 0.005)
            {
              break;
            }
          }

          else
          {
            v14 = v12;
            v15 = v16;
          }

          ++v12;
          v13 += 6;
        }

        while (HIDWORD(v21) != v12);
        if (v14 != -1)
        {
          v17 = &v22[3 * v14];
          v18 = v17->f64[1];
          time = *v7;
          [(FigIrisAutoTrimmer *)v8 _processMotionSample:&v20 gravity:&time.value motionTimestamp:v10 frameTimestamp:v18 metadata:?];
        }
      }
    }
  }

  else
  {
    [FigIrisAutoTrimmer processISPMotionData:forHostTime:];
  }
}

- (void)processInferences:(id)inferences forHostTime:(id *)time
{
  v14 = *time;
  if ([(FigIrisAutoTrimmer *)self _checkSamplesContainHostTime:?])
  {
    v7 = [(NSMutableArray *)self->_motionSamples count];
    v14 = *time;
    v8 = [(FigIrisAutoTrimmer *)self _findClosestIndexToHostTime:v7 - 1 fromIndex:0 limitIndex:?];
    [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v8), "setInferences:", inferences}];
    v9 = 0;
    v10 = v8;
    do
    {
      v11 = v10;
      v12 = v9;
      --v10;
      if (v11 < 2)
      {
        break;
      }

      v13 = [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v10), "inferences"}];
      v9 = v12 + 1;
    }

    while (!v13);
    if (v11 < v8)
    {
      do
      {
        [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v11++), "setInferences:", objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples, "objectAtIndexedSubscript:", v10), "inferences")}];
        --v12;
      }

      while (v12);
    }
  }
}

- (void)processCountOfVisibleVitalityObjects:(int)objects forHostTime:(id *)time
{
  if (objects >= 1)
  {
    v10 = v4;
    v11 = v5;
    if (time->var2)
    {
      v9 = *time;
      if ([(FigIrisAutoTrimmer *)self _checkSamplesContainHostTime:?])
      {
        [(FigIrisAutoTrimmer *)self processCountOfVisibleVitalityObjects:time forHostTime:objects];
      }
    }
  }
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)beginTrimmingForStillImageHostPTS:(SEL)s minimumPTS:(id *)tS
{
  self->_haveCaptureMotionDelta = 0;
  *retstr = *tS;
  lastObject = [(NSMutableArray *)self->_motionSamples lastObject];
  v10 = lastObject;
  if (!lastObject || ([lastObject cmTimestamp], time2 = *tS, CMTimeCompare(&time1, &time2) < 0))
  {
    [v10 timestamp];
    if (v31 >= [(FigIrisAutoTrimmer *)self _timeoutThreshold])
    {
LABEL_19:
      v33 = MEMORY[0x1E6960C70];
      *&retstr->var0 = *MEMORY[0x1E6960C70];
      var3 = *(v33 + 16);
      goto LABEL_20;
    }

LABEL_18:
    *&retstr->var0 = *&a5->var0;
    var3 = a5->var3;
LABEL_20:
    retstr->var3 = var3;
    goto LABEL_21;
  }

  result = [(NSMutableArray *)self->_motionSamples count];
  v12 = &result[-1].var3 + 7;
  if (result < 1)
  {
    goto LABEL_18;
  }

  v13 = result;
  while (1)
  {
    v13 = (v13 - 1);
    v14 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v13];
    v15 = v14;
    memset(&time1, 0, sizeof(time1));
    if (v14)
    {
      [v14 cmTimestamp];
    }

    time2 = time1;
    v34 = *a5;
    result = CMTimeCompare(&time2, &v34);
    if ((result & 0x80000000) != 0)
    {
      break;
    }

    if (self->_haveCaptureMotionDelta)
    {
      time2 = time1;
      v34 = *tS;
      result = CMTimeCompare(&time2, &v34);
      if ((result & 0x80000000) != 0)
      {
        v16 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v13 atLeastOneFromIndex:0 limitIndex:0.266666667];
        v17 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v13 atLeastOneFromIndex:v12 limitIndex:0.133333333];
        result = [(FigIrisAutoTrimmer *)self _shouldCut:v15 withLookahead:[(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v16] withLookback:[(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v17]];
        if (result)
        {
          break;
        }

        *retstr = time1;
      }
    }

    else
    {
      time2 = time1;
      v34 = *tS;
      result = CMTimeCompare(&time2, &v34);
      if (result <= 0)
      {
        [-[NSMutableArray lastObject](self->_motionSamples "lastObject")];
        v19 = v18;
        result = [v15 timestamp];
        if (v19 - v20 < 0.0333333333)
        {
          goto LABEL_19;
        }

        v21 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v13 atLeastOneFromIndex:0 limitIndex:0.0666666667];
        v22 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v13 atLeastOneFromIndex:v12 limitIndex:0.0333333333];
        [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v22), "attitudeRelativeTo:", -[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples, "objectAtIndexedSubscript:", v21)}];
        self->_captureMotionDelta.w = v23;
        self->_captureMotionDelta.x = v24;
        self->_captureMotionDelta.y = v25;
        self->_captureMotionDelta.z = v26;
        [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v22), "timestamp"}];
        v28 = v27;
        [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v21), "timestamp"}];
        self->_captureMotionDeltaPeriod = v28 - v29;
        self->_haveCaptureMotionDelta = 1;
        *retstr = time1;
        result = [v15 timestamp];
        self->_lastCheckedTimestamp = v30;
        self->_lastStatus = 4;
      }
    }

    if (v13 <= 0)
    {
      goto LABEL_18;
    }
  }

LABEL_21:
  if ((retstr->var2 & 1) != 0 && !self->_haveCaptureMotionDelta)
  {
    *&retstr->var0 = *&a5->var0;
    retstr->var3 = a5->var3;
  }

  return result;
}

- (int)emissionStatusForHostPTS:(id *)s
{
  v29 = **&MEMORY[0x1E6960C88];
  if (!self->_haveCaptureMotionDelta)
  {
    return 4;
  }

  v7 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:[(NSMutableArray *)self->_motionSamples count]+ ~self->_maxHoldFrames atLeastOneFromIndex:0.333333333 limitIndex:?];
  v8 = v7;
  do
  {
    if (v8-- < 1)
    {
      v12 = 0;
      goto LABEL_12;
    }

    [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v8), "timestamp"}];
  }

  while (v10 > self->_lastCheckedTimestamp);
  v11 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v8];
  v12 = v8 + 1;
  if (v11)
  {
    [v11 cmTimestamp];
  }

  else
  {
    memset(&rhs, 0, sizeof(rhs));
  }

  lhs = *s;
  CMTimeSubtract(&time, &lhs, &rhs);
  CMTimeAbsoluteValue(&v29, &time);
LABEL_12:
  if (v12 >= v7)
  {
LABEL_27:
    lastObject = [(NSMutableArray *)self->_motionSamples lastObject];
    if (lastObject && ([lastObject timestamp], v23 >= -[FigIrisAutoTrimmer _timeoutThreshold](self)) && self->_motionAvailable)
    {
      return 5;
    }

    else
    {
      lastStatus = 4;
      self->_lastStatus = 4;
    }
  }

  else
  {
    while (1)
    {
      v13 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v12];
      v14 = v13;
      memset(&time, 0, sizeof(time));
      if (v13)
      {
        [v13 cmTimestamp];
      }

      else
      {
        memset(&lhs, 0, sizeof(lhs));
      }

      v25 = *s;
      CMTimeSubtract(&rhs, &v25, &lhs);
      CMTimeAbsoluteValue(&time, &rhs);
      rhs = time;
      lhs = v29;
      if (CMTimeCompare(&rhs, &lhs) > 0)
      {
        break;
      }

      v29 = time;
      [v14 timestamp];
      self->_lastCheckedTimestamp = v15;
      v16 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v12 atLeastOneFromIndex:[(NSMutableArray *)self->_motionSamples count]- 1 limitIndex:0.0666666667];
      if (v12 != v16)
      {
        [(NSMutableArray *)self->_motionSamples count];
      }

      v17 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v16];
      v18 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v16 atLeastOneFromIndex:[(NSMutableArray *)self->_motionSamples count]- 1 limitIndex:0.266666667];
      v19 = [(FigIrisAutoTrimmer *)self _findClosestIndexToOffset:v16 atLeastOneFromIndex:0 limitIndex:0.133333333];
      v20 = [(FigIrisAutoTrimmer *)self _shouldCut:v17 withLookahead:[(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v18] withLookback:[(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v19]];
      if ([v17 intermediateCalculations])
      {
        intermediateCalculations = [v17 intermediateCalculations];
        v24[0] = MEMORY[0x1E69E9820];
        v24[1] = 3221225472;
        v24[2] = __47__FigIrisAutoTrimmer_emissionStatusForHostPTS___block_invoke;
        v24[3] = &unk_1E799C990;
        v24[4] = v14;
        [intermediateCalculations enumerateKeysAndObjectsUsingBlock:v24];
        [objc_msgSend(v17 "intermediateCalculations")];
      }

      if (v20)
      {
        lastStatus = 1;
        self->_lastStatus = 1;
        rhs = *s;
        self->_lastCheckedTimestamp = CMTimeGetSeconds(&rhs);
        return lastStatus;
      }

      self->_lastStatus = 4;
      if (v14)
      {
        [v14 cmTimestamp];
      }

      else
      {
        memset(&rhs, 0, sizeof(rhs));
      }

      lhs = *s;
      if (CMTimeCompare(&rhs, &lhs) > 0)
      {
        break;
      }

      if (++v12 >= v7)
      {
        goto LABEL_27;
      }
    }

    lastStatus = self->_lastStatus;
    if ((lastStatus & 0xFFFFFFFB) != 1)
    {
      time = v29;
      CMTimeGetSeconds(&time);
    }
  }

  return lastStatus;
}

uint64_t __47__FigIrisAutoTrimmer_emissionStatusForHostPTS___block_invoke(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ([objc_msgSend(*(a1 + 32) "intermediateCalculations")])
  {
    __47__FigIrisAutoTrimmer_emissionStatusForHostPTS___block_invoke_cold_1();
  }

  v6 = [*(a1 + 32) intermediateCalculations];

  return [v6 setObject:a3 forKeyedSubscript:a2];
}

- (float)computeVitalityScoreForStillImageHostPTS:(id *)s movieRange:(id *)range
{
  memset(&v16, 0, sizeof(v16));
  v6 = *&range->var0.var3;
  *&range.start.value = *&range->var0.var0;
  *&range.start.epoch = v6;
  *&range.duration.timescale = *&range->var1.var1;
  CMTimeRangeGetEnd(&v16, &range);
  if (![(NSMutableArray *)self->_motionSamples count])
  {
LABEL_17:
    [(NSMutableArray *)self->_motionSamples count];
    return 1.0;
  }

  v7 = 0;
  v8 = 0x7FFFFFFFFFFFFFFFLL;
  while (1)
  {
    v9 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v7];
    if (v9)
    {
      [v9 originatingFrameTime];
    }

    else
    {
      memset(&range, 0, 24);
    }

    var0 = range->var0;
    if ((CMTimeCompare(&range.start, &var0) & 0x80000000) == 0)
    {
      break;
    }

LABEL_13:
    if (++v7 >= [(NSMutableArray *)self->_motionSamples count])
    {
      if (v8 == 0x7FFFFFFFFFFFFFFFLL)
      {
        goto LABEL_17;
      }

LABEL_19:
      v7 = [(NSMutableArray *)self->_motionSamples count];
      goto LABEL_20;
    }
  }

  v10 = [(NSMutableArray *)self->_motionSamples objectAtIndexedSubscript:v7];
  if (v10)
  {
    [v10 originatingFrameTime];
  }

  else
  {
    memset(&range, 0, 24);
  }

  var0 = v16;
  if (CMTimeCompare(&range.start, &var0) < 0)
  {
    if (v8 == 0x7FFFFFFFFFFFFFFFLL)
    {
      v8 = v7;
    }

    goto LABEL_13;
  }

  if (v8 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_17;
  }

  if (v7 == 0x7FFFFFFFFFFFFFFFLL)
  {
    goto LABEL_19;
  }

LABEL_20:
  v11 = 1.0;
  if (v8 < v7)
  {
    v11 = [(FigIrisAutoTrimmer *)self _computeVitalityFrom:v8 to:v7];
    if (self->_intermediateLoggingEnabled)
    {
      do
      {
        [-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v8), "prepareIntermediates:", self->_estimatedIntermediatesCount}];
        *&v13 = v11;
        [objc_msgSend(-[NSMutableArray objectAtIndexedSubscript:](self->_motionSamples objectAtIndexedSubscript:{v8++), "intermediateCalculations"), "setObject:forKeyedSubscript:", objc_msgSend(MEMORY[0x1E696AD98], "numberWithFloat:", v13), @"vitality"}];
      }

      while (v7 != v8);
    }
  }

  return v11;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)maxHoldDuration
{
  *&retstr->var0 = *&self[8].var2;
  retstr->var3 = *(&self[9].var0 + 4);
  return self;
}

- (void)setMaxHoldDuration:(id *)duration
{
  v3 = *&duration->var0;
  *&self->_maxHoldDuration.flags = duration->var3;
  *(&self->_intermediateLoggingEnabled + 4) = v3;
  [(FigIrisAutoTrimmer *)self _updateStorageStats];
}

- (void)setVitalityScoringSmartCameraPipelineVersion:(id)version
{
  self->_vitalityScoringSmartCameraPipelineVersion = version;
  if (version.var0 >= 4u)
  {
    if (version.var0 == 4)
    {
      v3 = 2;
      v4 = 0.86;
    }

    else if (version.var0 == 5 && (*&version.var0 & 0xFFFF0000) == 0)
    {
      v3 = 3;
      v4 = 0.728;
    }

    else
    {
      v3 = 4;
      v4 = 0.468;
    }
  }

  else
  {
    v3 = 1;
    v4 = 0.629;
  }

  self->_vitalityScoringVersion = v3;
  self->_vitalityDocumentThreshold = v4;
}

- (id)exportMotionSamples
{
  v2 = self->_motionSamples;

  return v2;
}

- (void)_initSVM:(uint64_t)m fromFile:(void *)file
{
  if (m)
  {
    v4 = [MEMORY[0x1E695DFA8] setWithObjects:{@"nVectors", @"nParams", @"Rho", @"ParamNames", @"Normalization", @"Vectors", 0}];
    if ([objc_msgSend(file "allKeys")])
    {
      *(m + 160) = [file objectForKeyedSubscript:@"ParamNames"];
      return;
    }

    if ([file objectForKeyedSubscript:@"KernelType"])
    {
      if ([objc_msgSend(file objectForKeyedSubscript:{@"KernelType", "isEqualToString:", @"Linear"}])
      {
        *(m + 140) = 0;
      }

      else
      {
        if (![objc_msgSend(file objectForKeyedSubscript:{@"KernelType", "isEqualToString:", @"RBF"}])
        {
          return;
        }

        *(m + 140) = 1;
        [v4 addObject:@"Gamma"];
      }

      [v4 minusSet:{objc_msgSend(MEMORY[0x1E695DFD8], "setWithArray:", objc_msgSend(file, "allKeys"))}];
      if (![v4 count])
      {
        *(m + 144) = [objc_msgSend(file objectForKeyedSubscript:{@"nVectors", "intValue"}];
        *(m + 148) = [objc_msgSend(file objectForKeyedSubscript:{@"nParams", "intValue"}];
        [objc_msgSend(file objectForKeyedSubscript:{@"Rho", "floatValue"}];
        *(m + 152) = v5;
        if (*(m + 140) == 1)
        {
          [objc_msgSend(file objectForKeyedSubscript:{@"Gamma", "floatValue"}];
          *(m + 156) = v6;
        }

        *(m + 160) = [file objectForKeyedSubscript:@"ParamNames"];
        *(m + 168) = [file objectForKeyedSubscript:@"Normalization"];
        *(m + 176) = [file objectForKeyedSubscript:@"Vectors"];
        v7 = *(m + 148);
        v8 = 8 * v7;
        v9 = *(m + 144) * v7;
        v10 = [*(m + 160) count];
        v11 = *(m + 148) - 1;
        v12 = [*(m + 168) length];
        v13 = [*(m + 176) length];
        v14 = *(m + 160);
        if (v13 == 4 * v9 && v12 == v8 && v10 == v11)
        {
          *(m + 192) = [v14 count];
        }

        else
        {
          if (v14)
          {
            CFRelease(v14);
            *(m + 160) = 0;
          }

          v17 = *(m + 168);
          if (v17)
          {
            CFRelease(v17);
            *(m + 168) = 0;
          }

          v18 = *(m + 176);
          if (v18)
          {
            CFRelease(v18);
            *(m + 176) = 0;
          }
        }
      }
    }
  }
}

- (void)_processMotionSample:(uint64_t)sample gravity:(__int128 *)gravity motionTimestamp:(void *)timestamp frameTimestamp:(double)frameTimestamp metadata:
{
  if (self)
  {
    v12 = *(self + 256) - 1;
    if ([*(self + 184) count] > v12)
    {
      [*(self + 184) removeObjectsInRange:{0, objc_msgSend(*(self + 184), "count") - v12}];
    }

    if ([*(self + 184) count])
    {
      v13 = [*(self + 184) objectAtIndexedSubscript:{-[FigIrisAutoTrimmer _findClosestIndexToTimestamp:fromIndex:limitIndex:](self, objc_msgSend(*(self + 184), "count") - 1, 0, frameTimestamp + -0.0666666667)}];
    }

    else
    {
      v13 = 0;
    }

    v14 = [FigIrisAutoTrimmerMotionSample alloc];
    v72 = *gravity;
    v73 = *(gravity + 2);
    v15 = [(FigIrisAutoTrimmerMotionSample *)v14 initWithAttitude:a2 gravity:sample motionTimestamp:&v72 frameTimestamp:v13 previousSample:frameTimestamp];
    v16 = v15;
    if (*(self + 160))
    {
      v17 = [(FigIrisAutoTrimmerMotionSample *)v15 prepareIntermediates:*(self + 192)];
      v18 = *(self + 160);
      v26 = OUTLINED_FUNCTION_4_2(v17, v19, v20, v21, v22, v23, v24, v25, v39, v41, v43, v45, v47, v49, v51, v53, v55, v57, v59, v61, v63, v65, v67, v69, 0);
      if (v26)
      {
        v27 = v26;
        v28 = MEMORY[0];
        do
        {
          for (i = 0; i != v27; ++i)
          {
            if (MEMORY[0] != v28)
            {
              objc_enumerationMutation(v18);
            }

            v30 = *(8 * i);
            v31 = [timestamp objectForKeyedSubscript:v30];
            if (v31)
            {
              v31 = [(NSMutableDictionary *)[(FigIrisAutoTrimmerMotionSample *)v16 intermediateCalculations] setObject:v31 forKeyedSubscript:v30];
            }
          }

          v27 = OUTLINED_FUNCTION_4_2(v31, v32, v33, v34, v35, v36, v37, v38, v40, v42, v44, v46, v48, v50, v52, v54, v56, v58, v60, v62, v64, v66, v68, v70, v71);
        }

        while (v27);
      }
    }

    [*(self + 184) addObject:v16];
  }
}

- (uint64_t)_checkSamplesContainHostTime:(uint64_t)result
{
  if (!result)
  {
    return result;
  }

  v3 = result;
  result = [*(result + 184) count];
  if (!result)
  {
    return result;
  }

  firstObject = [*(v3 + 184) firstObject];
  if (firstObject)
  {
    [firstObject originatingFrameTime];
  }

  else
  {
    OUTLINED_FUNCTION_4_90();
  }

  OUTLINED_FUNCTION_1_123();
  if (CMTimeCompare(&time1, &time2) < 0)
  {
    firstObject2 = [*(v3 + 184) firstObject];
    if (firstObject2)
    {
LABEL_14:
      [firstObject2 originatingFrameTime];
      goto LABEL_15;
    }

LABEL_10:
    memset(&time1, 0, sizeof(time1));
LABEL_15:
    OUTLINED_FUNCTION_2_10();
    CMTimeSubtract(&time2, &v10, &time1);
    Seconds = CMTimeGetSeconds(&time2);
    goto LABEL_17;
  }

  lastObject = [*(v3 + 184) lastObject];
  if (lastObject)
  {
    [lastObject originatingFrameTime];
  }

  else
  {
    OUTLINED_FUNCTION_4_90();
  }

  OUTLINED_FUNCTION_1_123();
  if (CMTimeCompare(&time1, &time2) >= 1)
  {
    firstObject2 = [*(v3 + 184) lastObject];
    if (firstObject2)
    {
      goto LABEL_14;
    }

    goto LABEL_10;
  }

  Seconds = 0.0;
LABEL_17:
  if (fabs(Seconds) <= 0.5 / *(v3 + 248))
  {
    return 1;
  }

  time2 = *a2;
  firstObject3 = [*(v3 + 184) firstObject];
  if (firstObject3)
  {
    [firstObject3 originatingFrameTime];
  }

  else
  {
    OUTLINED_FUNCTION_4_90();
  }

  lastObject2 = [*(v3 + 184) lastObject];
  if (lastObject2)
  {
    [lastObject2 originatingFrameTime];
  }

  else
  {
    OUTLINED_FUNCTION_4_90();
  }

  CMTimeGetSeconds(&time2);
  return 0;
}

- (uint64_t)_findClosestIndexToHostTime:(uint64_t)time fromIndex:(uint64_t)index limitIndex:
{
  if (result)
  {
    timeCopy = time;
    v6 = result;
    if (time < index)
    {
      v7 = 1;
    }

    else
    {
      v7 = -1;
    }

    memset(&timeCopy2, 0, sizeof(timeCopy2));
    v8 = [*(result + 184) objectAtIndexedSubscript:?];
    if (v8)
    {
      [v8 originatingFrameTime];
    }

    else
    {
      memset(&lhs, 0, sizeof(lhs));
    }

    OUTLINED_FUNCTION_1_123();
    CMTimeSubtract(&time, &lhs, &rhs);
    CMTimeAbsoluteValue(&timeCopy2, &time);
    if (v7 + timeCopy >= 0)
    {
      while (v7 + timeCopy < [*(v6 + 184) count])
      {
        memset(&time, 0, sizeof(time));
        timeCopy = [*(v6 + 184) objectAtIndexedSubscript:v7 + timeCopy];
        if (timeCopy)
        {
          [timeCopy originatingFrameTime];
        }

        else
        {
          memset(&rhs, 0, sizeof(rhs));
        }

        OUTLINED_FUNCTION_2_10();
        CMTimeSubtract(&lhs, &rhs, &v11);
        CMTimeAbsoluteValue(&time, &lhs);
        lhs = time;
        rhs = timeCopy2;
        if (CMTimeCompare(&lhs, &rhs) >= 1)
        {
          break;
        }

        timeCopy2 = time;
        result = timeCopy + v7;
        if (v7 - index + timeCopy)
        {
          v10 = 2 * v7 + timeCopy;
          timeCopy += v7;
          if ((v10 & 0x8000000000000000) == 0)
          {
            continue;
          }
        }

        return result;
      }
    }

    return timeCopy;
  }

  return result;
}

- (double)_timeoutThreshold
{
  if (!self)
  {
    return 0.0;
  }

  if ((*(self + 216) & 1) == 0)
  {
    return -INFINITY;
  }

  Host = [(FigIrisAutoTrimmer *)self _getHostTime];
  v4 = *(self + 204);
  return Host - CMTimeGetSeconds(&v4);
}

- (unint64_t)_findClosestIndexToOffset:(int64_t)offset atLeastOneFromIndex:(double)index limitIndex:
{
  if (!self)
  {
    return 0;
  }

  v4 = a2;
  if ((a2 & 0x8000000000000000) != 0)
  {
    return v4;
  }

  v8 = [*(self + 184) count];
  if (v4 == offset || v8 <= v4)
  {
    return v4;
  }

  if (v4 < offset)
  {
    v10 = 1;
  }

  else
  {
    v10 = -1;
  }

  v11 = v10 + v4;
  if ((v10 + v4) < 0)
  {
    return -1;
  }

  v12 = [*(self + 184) count];
  if (v11 == offset || v11 >= v12)
  {
    v4 += v10;
    return v4;
  }

  [objc_msgSend(*(self + 184) objectAtIndexedSubscript:{v4), "timestamp"}];
  v16 = v15 + index * v10;

  return [(FigIrisAutoTrimmer *)self _findClosestIndexToTimestamp:offset fromIndex:v16 limitIndex:?];
}

- (BOOL)_shouldCut:(void *)cut withLookahead:(void *)lookahead withLookback:
{
  if (!self)
  {
    return 0;
  }

  if (sEnableAllLoggingNoTrim || *(self + 176) || *(self + 200) == 1)
  {
    [a2 prepareIntermediates:*(self + 192)];
    v8 = OUTLINED_FUNCTION_45_0();
    [(FigIrisAutoTrimmer *)v8 _isUnstable:v9 withLookback:lookahead];
    v10 = OUTLINED_FUNCTION_45_0();
    [(FigIrisAutoTrimmer *)v10 _shouldCutUnstable:v11 withLookahead:cut];
    *(self + 192) = [objc_msgSend(a2 "intermediateCalculations")];
    if (sEnableAllLoggingNoTrim)
    {
      return 0;
    }
  }

  if (*(self + 176))
  {
    v17 = OUTLINED_FUNCTION_45_0();

    return [(FigIrisAutoTrimmer *)v17 _shouldCutSVM:v18];
  }

  else
  {
    v13 = OUTLINED_FUNCTION_45_0();
    if (![(FigIrisAutoTrimmer *)v13 _isUnstable:v14 withLookback:lookahead])
    {
      return 0;
    }

    v15 = OUTLINED_FUNCTION_45_0();

    return [(FigIrisAutoTrimmer *)v15 _shouldCutUnstable:v16 withLookahead:cut];
  }
}

- (float)_computeVitalityFrom:(uint64_t)from to:
{
  if (!self)
  {
    return 0.0;
  }

  v4 = a2;
  v6 = 1.0;
  if (*(self + 268) >= 0.0 && a2 < from)
  {
    v8 = a2;
    while ([objc_msgSend(*(self + 184) objectAtIndexedSubscript:{v8), "vitalityObjectCount"}] <= 0)
    {
      if (from == ++v8)
      {
        v9 = 0;
        v10 = *off_1E798C358;
        v11 = *off_1E798C310;
        v12 = 0.0;
        do
        {
          v13 = [objc_msgSend(*(self + 184) objectAtIndexedSubscript:{v4), "inferences"}];
          if (v13)
          {
            v14 = *(self + 276);
            v15 = v11;
            if (v14 >= 5)
            {
              if (v14 != 5 || (v15 = v11, *(self + 278)))
              {
                v15 = v10;
              }
            }

            v16 = [v13 objectForKeyedSubscript:v15];
            if (v16)
            {
              [v16 floatValue];
              v12 = v12 + v17;
              ++v9;
            }
          }

          ++v4;
        }

        while (from != v4);
        if (v9)
        {
          v18 = *(self + 268);
          v19 = v18 - (v12 / v9);
          v20 = fabsf(v18);
          v21 = fabsf(v18 + -1.0);
          if (v20 > v21)
          {
            v21 = v20;
          }

          return ((v19 / v21) * 0.5) + 0.5;
        }

        return v6;
      }
    }
  }

  return v6;
}

- (unint64_t)_findClosestIndexToTimestamp:(int64_t)timestamp fromIndex:(double)index limitIndex:
{
  if (!self)
  {
    return 0;
  }

  v5 = a2;
  if (a2 < timestamp)
  {
    v8 = 1;
  }

  else
  {
    v8 = -1;
  }

  [objc_msgSend(*(self + 184) objectAtIndexedSubscript:{a2), "timestamp"}];
  v10 = v8 + v5;
  if ((v8 + v5) >= 0)
  {
    v11 = vabdd_f64(v9, index);
    v12 = v5 + 2 * v8;
    do
    {
      v13 = v12;
      if (v10 >= [*(self + 184) count])
      {
        break;
      }

      [objc_msgSend(*(self + 184) objectAtIndexedSubscript:{v10), "timestamp"}];
      v15 = vabdd_f64(v14, index);
      if (v15 <= v11)
      {
        v5 = v10;
      }

      if (timestamp == v10 || v15 > v11)
      {
        break;
      }

      v10 += v8;
      v12 = v13 + v8;
      v11 = v15;
    }

    while ((v13 & 0x8000000000000000) == 0);
  }

  return v5;
}

- (uint64_t)_directionalWeightForSample:(uint64_t)result
{
  if (result)
  {
    v3 = result;
    [a2 accel];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v10 = sqrt(v6 * v6 + v4 * v4 + v8 * v8);
    v11 = acos(*(v3 + 16));
    v12 = v11 + v11;
    if (v12 > 3.14159265)
    {
      v12 = v12 + -6.28318531;
    }

    v13 = fabs(v12) / *(v3 + 48);
    if ([a2 intermediateCalculations])
    {
      [objc_msgSend(a2 "intermediateCalculations")];
      [objc_msgSend(a2 "intermediateCalculations")];
      [objc_msgSend(a2 "intermediateCalculations")];
    }

    if (v10 >= 0.0001)
    {
      if (v13 <= *&sMotionThreshold)
      {
        [a2 gravity];
        v14 = v17;
        [a2 gravity];
        v15 = v18;
        [a2 gravity];
        v16 = v19;
      }

      else
      {
        v14 = *(v3 + 24);
        v15 = *(v3 + 32);
        v16 = *(v3 + 40);
      }

      v20 = (v7 * v15 + v14 * v5 + v16 * v9) / (v10 * sqrt(v15 * v15 + v14 * v14 + v16 * v16));
      result = [a2 intermediateCalculations];
      if (result)
      {
        [MEMORY[0x1E696AD98] numberWithDouble:(v7 * *(v3 + 32) + *(v3 + 24) * v5 + *(v3 + 40) * v9) / (v10 * sqrt(*(v3 + 32) * *(v3 + 32) + *(v3 + 24) * *(v3 + 24) + *(v3 + 40) * *(v3 + 40)))];
        [OUTLINED_FUNCTION_2_115() setObject:v3 forKeyedSubscript:@"captureDP"];
        [a2 gravity];
        v22 = v21;
        [a2 gravity];
        v24 = v23;
        [a2 gravity];
        [MEMORY[0x1E696AD98] numberWithDouble:(v7 * v24 + v22 * v5 + v25 * v9) / (v10 * sqrt(v24 * v24 + v22 * v22 + v25 * v25))];
        [OUTLINED_FUNCTION_2_115() setObject:v3 forKeyedSubscript:@"gravityDP"];
        [MEMORY[0x1E696AD98] numberWithDouble:v20];
        return [OUTLINED_FUNCTION_2_115() setObject:v3 forKeyedSubscript:@"weightDP"];
      }
    }

    else
    {
      result = [a2 intermediateCalculations];
      if (result)
      {
        [objc_msgSend(a2 "intermediateCalculations")];
        [objc_msgSend(a2 "intermediateCalculations")];
        [MEMORY[0x1E696AD98] numberWithDouble:0.735294118];
        return [OUTLINED_FUNCTION_2_115() setObject:&unk_1F2246C00 forKeyedSubscript:@"weightDP"];
      }
    }
  }

  return result;
}

- (BOOL)_isUnstable:(void *)unstable withLookback:
{
  if (result)
  {
    v5 = result;
    [a2 delta];
    v7 = acos(v6);
    v8 = v7 + v7;
    if (v8 > 3.14159265)
    {
      v8 = v8 + -6.28318531;
    }

    v9 = fabs(v8);
    [a2 deltaPeriod];
    v11 = v9 / v10;
    [unstable delta];
    v13 = acos(v12);
    v14 = fabs(OUTLINED_FUNCTION_5_84(v13));
    [unstable deltaPeriod];
    v16 = v14 / v15;
    if (v14 / v15 >= v11)
    {
      v17 = v11;
    }

    else
    {
      v17 = v14 / v15;
    }

    [a2 accel];
    v19 = v18;
    [(FigIrisAutoTrimmer *)v5 _directionalWeightForSample:a2];
    v21 = v20;
    v22 = 1.0 / (v17 * 1.5 + 1.0);
    v23 = acos(v19);
    v24 = fabs(OUTLINED_FUNCTION_5_84(v23));
    [a2 deltaPeriod];
    v26 = v21 * (v24 / v25) * v22;
    [a2 timestamp];
    if ([a2 intermediateCalculations])
    {
      [MEMORY[0x1E696AD98] numberWithDouble:v16];
      [OUTLINED_FUNCTION_2_115() setObject:v5 forKeyedSubscript:@"deltaMagnitudeLookback"];
      [MEMORY[0x1E696AD98] numberWithDouble:v11];
      [OUTLINED_FUNCTION_2_115() setObject:v5 forKeyedSubscript:@"deltaMagnitudeSample"];
      [MEMORY[0x1E696AD98] numberWithDouble:v17];
      [OUTLINED_FUNCTION_2_115() setObject:v5 forKeyedSubscript:@"deltaMagnitude"];
      v27 = MEMORY[0x1E696AD98];
      [a2 deltaPeriod];
      [v27 numberWithDouble:v24 / v28];
      [OUTLINED_FUNCTION_2_115() setObject:v27 forKeyedSubscript:@"accelMagnitude"];
      [MEMORY[0x1E696AD98] numberWithDouble:v21];
      [OUTLINED_FUNCTION_2_115() setObject:v27 forKeyedSubscript:@"dirWeight"];
      [MEMORY[0x1E696AD98] numberWithDouble:v22];
      [OUTLINED_FUNCTION_2_115() setObject:v27 forKeyedSubscript:@"speedWeight"];
      [MEMORY[0x1E696AD98] numberWithDouble:v26];
      [OUTLINED_FUNCTION_2_115() setObject:v27 forKeyedSubscript:@"weightedAccelMagnitude"];
      [MEMORY[0x1E696AD98] numberWithInt:v26 > *&sBadAccelThreshold];
      [OUTLINED_FUNCTION_2_115() setObject:v27 forKeyedSubscript:@"unstable"];
    }

    return v26 > *&sBadAccelThreshold;
  }

  return result;
}

- (BOOL)_shouldCutUnstable:(void *)unstable withLookahead:
{
  if (result)
  {
    [unstable attitudeRelativeTo:a2];
    v6 = v5;
    v8 = v7;
    v10 = v9;
    v12 = v11;
    v13 = acos(v5);
    v14 = v13 + v13;
    if (v14 > 3.14159265)
    {
      v14 = v14 + -6.28318531;
    }

    v15 = fabs(v14);
    [unstable timestamp];
    v17 = v16;
    [a2 timestamp];
    v19 = vabdd_f64(v17, v18);
    v20 = 0.0;
    if (v19 <= 0.0001)
    {
      v21 = 0.0;
    }

    else
    {
      v21 = v15 / v19;
    }

    [unstable timestamp];
    [a2 timestamp];
    [a2 accel];
    v26 = sqrt(v10 * v10 + v8 * v8 + v12 * v12);
    if (v26 >= 0.00001)
    {
      v27 = sqrt(v24 * v24 + v23 * v23 + v25 * v25);
      if (v27 >= 0.00001)
      {
        v20 = (v10 * v24 + v8 * v23 + v12 * v25) / (v26 * v27);
      }
    }

    if ((v22 ^ *&v6) >= 0)
    {
      v28 = v20;
    }

    else
    {
      v28 = -v20;
    }

    if ([a2 intermediateCalculations])
    {
      [MEMORY[0x1E696AD98] numberWithDouble:v15];
      [OUTLINED_FUNCTION_2_115() setObject:unstable forKeyedSubscript:@"aheadAngle"];
      [MEMORY[0x1E696AD98] numberWithDouble:v21 * v28];
      [OUTLINED_FUNCTION_2_115() setObject:unstable forKeyedSubscript:@"aheadAccComp"];
      [MEMORY[0x1E696AD98] numberWithDouble:v28];
      [OUTLINED_FUNCTION_2_115() setObject:unstable forKeyedSubscript:@"accelConsistency"];
    }

    return v21 * v28 > 0.47;
  }

  return result;
}

- (BOOL)_shouldCutSVM:(_BOOL8)result
{
  if (result)
  {
    v3 = result;
    bytes = [*(result + 168) bytes];
    bytes2 = [*(v3 + 176) bytes];
    v6 = *(v3 + 148);
    v7 = v6 - 1;
    v8 = v25 - ((4 * v6 + 11) & 0xFFFFFFFFFFFFFFF0);
    if ([*(v3 + 160) count])
    {
      v9 = 0;
      do
      {
        v10 = [objc_msgSend(a2 "intermediateCalculations")];
        v11 = 0;
        if (v10)
        {
          v12 = v10;
          objc_opt_class();
          if (objc_opt_isKindOfClass())
          {
            [v12 floatValue];
            v11 = v13;
          }
        }

        *&v8[4 * v9++] = v11;
      }

      while ([*(v3 + 160) count] > v9);
    }

    MEMORY[0x1B26F29B0](v8, 1, bytes + 8, 2, bytes + 12, 2, v25 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0), 1, v7);
    v14 = *(v3 + 144);
    v15 = (v25 - ((4 * v14 + 15) & 0x7FFFFFFF0));
    v16 = *(v3 + 140);
    if (v16 == 1)
    {
      v19 = (v25 - ((4 * v14 + 15) & 0x7FFFFFFF0));
      v20 = *(v3 + 144);
      if (v20 < 1)
      {
        v23 = v20;
      }

      else
      {
        v25[1] = v25;
        v25[2] = v25;
        v21 = 0;
        v22 = v19;
        do
        {
          vDSP_distancesq(&bytes2[*(v3 + 148) * v21++ + 1], 1, (v25 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0)), 1, v22, v7);
          v20 = *(v3 + 144);
          ++v22;
        }

        while (v21 < v20);
        v23 = v20;
      }

      v27 = -*(v3 + 156);
      v24 = (v25 - ((4 * v20 + 15) & 0x7FFFFFFF0));
      MEMORY[0x1B26F29C0](v19, 1, &v27, v24, 1, v23);
      vvexpf(v15, v24, (v3 + 144));
      LODWORD(v14) = *(v3 + 144);
    }

    else if (!v16 && v14 >= 1)
    {
      v17 = 0;
      v18 = (v25 - ((4 * *(v3 + 144) + 15) & 0x7FFFFFFF0));
      do
      {
        vDSP_dotpr(&bytes2[*(v3 + 148) * v17++ + 1], 1, (v25 - ((4 * v7 + 15) & 0xFFFFFFFFFFFFFFF0)), 1, v18, v7);
        v14 = *(v3 + 144);
        ++v18;
      }

      while (v17 < v14);
    }

    __C = 0.0;
    vDSP_dotpr(bytes2, *(v3 + 148), v15, 1, &__C, v14);
    return __C > *(v3 + 152);
  }

  return result;
}

- (Float64)_getHostTime
{
  if (!self)
  {
    return 0.0;
  }

  memset(&v4, 0, sizeof(v4));
  HostTimeClock = CMClockGetHostTimeClock();
  CMClockGetTime(&v4, HostTimeClock);
  v3 = v4;
  return CMTimeGetSeconds(&v3);
}

- (uint64_t)processISPMotionData:forHostTime:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)processISPMotionData:forHostTime:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)processCountOfVisibleVitalityObjects:(int)a3 forHostTime:.cold.1(uint64_t a1, uint64_t a2, int a3)
{
  [*(a1 + 184) count];
  OUTLINED_FUNCTION_2_10();
  v6 = [*(a1 + 184) objectAtIndexedSubscript:{-[FigIrisAutoTrimmer _findClosestIndexToHostTime:fromIndex:limitIndex:](a1, &v9, v5, 0)}];
  v7 = [v6 vitalityObjectCount] + a3;

  return [v6 setVitalityObjectCount:v7];
}

@end