@interface BWIrisSequenceAdjuster
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForStillImageTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForTime:(SEL)time;
- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffsetForOriginalStillImageTime:(SEL)time;
- (BOOL)_getPreviousTimeSkewOut:(_BOOL8)result andNextTimeSkewOut:(void *)out forTime:(void *)time;
- (BOOL)discontinuityExistsBetweenCurrentPTS:(id *)s previousPTS:(id *)tS;
- (BWIrisSequenceAdjuster)initWithMediaTypes:(id)types visMotionMetadataPreloadingEnabled:(BOOL)enabled generateIFrames:(BOOL)frames attachedMediaKeysToPreserve:(id)preserve;
- (CMTime)_adjustedTimeForAudioBufferWithTime:(uint64_t)time@<X8>;
- (CMTime)_originalDurationForVideoBufferWithTime:(uint64_t)time@<X2>;
- (opaqueCMSampleBuffer)dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:(int64_t)index;
- (uint64_t)_adjustedTimeForVideoBufferWithTime:(unsigned int)time@<W2> forceKeepingBuffer:(uint64_t)buffer@<X3> discontinuityFrameAttributesOut:(uint64_t)out@<X8>;
- (uint64_t)_indexOfTime:(uint64_t)time;
- (void)_adjustTimesInAudioInterleavingQueues;
- (void)_audioOffsetForOriginalStillImageTime:(CMTime *)time@<X2> adjustedStillImageTime:(uint64_t)imageTime@<X8>;
- (void)adjustMovieInfoTimes:(id)times;
- (void)dealloc;
- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaTypeWithIndex:(int64_t)index;
- (void)enqueueVideoBufferTime:(id *)time nativeTime:(id *)nativeTime isBracketFrame:(BOOL)frame isSISFrame:(BOOL)sFrame;
- (void)reset;
- (void)setMasterMovieOriginalStartTime:(id *)time;
@end

@implementation BWIrisSequenceAdjuster

- (void)reset
{
  v3 = MEMORY[0x1E6960C70];
  v4 = *MEMORY[0x1E6960C70];
  *&self->_firstIrisAudioOffset.value = *MEMORY[0x1E6960C70];
  v5 = *(v3 + 16);
  self->_firstIrisAudioOffset.epoch = v5;
  *&self->_nextAdjustedVideoTime.value = v4;
  self->_nextAdjustedVideoTime.epoch = v5;
  *&self->_masterMovieOriginalStartTime.value = v4;
  self->_masterMovieOriginalStartTime.epoch = v5;
  *&self->_previewFrameDuration.value = v4;
  self->_previewFrameDuration.epoch = v5;
  self->_lastVideoAdjustedTime.epoch = v5;
  *&self->_lastVideoAdjustedTime.value = v4;
  [(BWMotionDataPreserver *)self->_motionDataPreserver reset];

  self->_preservedAttachedMediaSbufByKeys = 0;
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  interleavingQueues = self->_interleavingQueues;
  v7 = [(NSMutableArray *)interleavingQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
  if (v7)
  {
    v8 = v7;
    v9 = *v13;
    do
    {
      v10 = 0;
      do
      {
        if (*v13 != v9)
        {
          objc_enumerationMutation(interleavingQueues);
        }

        [*(*(&v12 + 1) + 8 * v10++) removeAllObjects];
      }

      while (v8 != v10);
      v8 = [(NSMutableArray *)interleavingQueues countByEnumeratingWithState:&v12 objects:v11 count:16];
    }

    while (v8);
  }
}

- (BWIrisSequenceAdjuster)initWithMediaTypes:(id)types visMotionMetadataPreloadingEnabled:(BOOL)enabled generateIFrames:(BOOL)frames attachedMediaKeysToPreserve:(id)preserve
{
  v24.receiver = self;
  v24.super_class = BWIrisSequenceAdjuster;
  v10 = [(BWIrisSequenceAdjuster *)&v24 init];
  if (v10)
  {
    preserveCopy = preserve;
    v10->_interleavingQueues = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_discontinuities = objc_alloc_init(MEMORY[0x1E695DF70]);
    v10->_mediaTypes = malloc_type_calloc(4uLL, [types count], 0x100004052888210uLL);
    v20 = 0u;
    v21 = 0u;
    v22 = 0u;
    v23 = 0u;
    v11 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = 0;
      v14 = *v21;
      do
      {
        v15 = 0;
        v16 = v13;
        do
        {
          if (*v21 != v14)
          {
            objc_enumerationMutation(types);
          }

          v13 = v16 + 1;
          v10->_mediaTypes[v16] = [*(*(&v20 + 1) + 8 * v15) intValue];
          -[NSMutableArray addObject:](v10->_interleavingQueues, "addObject:", [MEMORY[0x1E695DF70] array]);
          ++v15;
          ++v16;
        }

        while (v12 != v15);
        v12 = [types countByEnumeratingWithState:&v20 objects:v19 count:16];
      }

      while (v12);
    }

    v10->_timeSkews = objc_alloc_init(MEMORY[0x1E695DF70]);
    if (!enabled)
    {
      v10->_motionDataPreserver = [[BWMotionDataPreserver alloc] initWithName:[(BWIrisSequenceAdjuster *)v10 description]];
    }

    v10->_generateIFrames = frames;
    v10->_attachedMediaKeysToPreserve = preserveCopy;
    [(BWIrisSequenceAdjuster *)v10 reset];
  }

  return v10;
}

- (void)dealloc
{
  free(self->_mediaTypes);

  v3.receiver = self;
  v3.super_class = BWIrisSequenceAdjuster;
  [(BWIrisSequenceAdjuster *)&v3 dealloc];
}

- (BOOL)discontinuityExistsBetweenCurrentPTS:(id *)s previousPTS:(id *)tS
{
  memset(&v11, 0, sizeof(v11));
  time = self->_previewFrameDuration;
  CMTimeMultiply(&v11, &time, 3);
  memset(&time, 0, sizeof(time));
  lhs = *s;
  rhs = *tS;
  CMTimeSubtract(&time, &lhs, &rhs);
  memset(&lhs, 0, sizeof(lhs));
  CMTimeMake(&rhs, 5, 1000);
  v7 = time;
  CMTimeAdd(&lhs, &v7, &rhs);
  rhs = lhs;
  v7 = v11;
  return CMTimeCompare(&rhs, &v7) > 0;
}

- (void)enqueueVideoBufferTime:(id *)time nativeTime:(id *)nativeTime isBracketFrame:(BOOL)frame isSISFrame:(BOOL)sFrame
{
  sFrameCopy = sFrame;
  frameCopy = frame;
  selfCopy = self;
  v11 = [(NSMutableArray *)self->_timeSkews count];
  if (v11 < 2)
  {
    goto LABEL_52;
  }

  nativeTimeCopy = nativeTime;
  v61 = *MEMORY[0x1E6960C70];
  v13 = *(MEMORY[0x1E6960C70] + 8);
  v12 = *(MEMORY[0x1E6960C70] + 12);
  v62 = v13;
  v14 = *(MEMORY[0x1E6960C70] + 16);
  v44 = v61;
  value = v61;
  timescale = v13;
  v15 = (v12 & 1) == 0;
  v41 = frameCopy;
  v42 = sFrameCopy;
  timeCopy = time;
  if ((v12 & 1) == 0)
  {
    v16 = v11;
    v17 = v11 - 1;
    if (((v11 - 1) & 0x8000000000000000) == 0)
    {
      v43 = 0;
      v18 = 0;
      v19 = v12;
      v45 = v14;
      epoch = v14;
      flags = v12;
      while (1)
      {
        v21 = selfCopy;
        v22 = [(NSMutableArray *)selfCopy->_timeSkews objectAtIndexedSubscript:v17];
        if ([v22 isBracketFrame])
        {
          break;
        }

        if ((flags & 1) == 0)
        {
          if (v22)
          {
            [v22 native];
            flags = v58.flags;
            epoch = v58.epoch;
          }

          else
          {
            epoch = 0;
            flags = 0;
            memset(&v58, 0, sizeof(v58));
          }

          value = v58.value;
          timescale = v58.timescale;
          if (v18)
          {
            isSISFrame = [v22 isSISFrame];
            v24 = v43;
            if (isSISFrame)
            {
              v24 = v22;
            }

            v43 = v24;
            v18 = 1;
          }

          else
          {
            v18 = 0;
          }

          goto LABEL_7;
        }

        if (![v22 isStartOfDiscontinuity])
        {
          if (v22)
          {
            [v22 native];
            v19 = v58.flags;
            v45 = v58.epoch;
          }

          else
          {
            v45 = 0;
            v19 = 0;
            memset(&v58, 0, sizeof(v58));
          }

          selfCopy = v21;
          v61 = v58.value;
          v62 = v58.timescale;
          v16 = v17;
          goto LABEL_9;
        }

        v61 = v44;
        v62 = v13;
        v45 = v14;
        epoch = v14;
        value = v44;
        flags = v12;
        v19 = v12;
        timescale = v13;
LABEL_8:
        selfCopy = v21;
LABEL_9:
        v15 = (v19 & 1) == 0;
        if ((v19 & 1) == 0)
        {
          v17 = v16 - 1;
          if (((v16 - 1) & 0x8000000000000000) == 0)
          {
            continue;
          }
        }

        goto LABEL_28;
      }

      v61 = v44;
      v62 = v13;
      value = v44;
      timescale = v13;
      v18 |= [v22 isSISFrame];
      v45 = v14;
      epoch = v14;
      flags = v12;
      v19 = v12;
LABEL_7:
      v16 = v17;
      goto LABEL_8;
    }
  }

  v43 = 0;
  v45 = v14;
  epoch = v14;
  flags = v12;
  v19 = v12;
LABEL_28:
  frameCopy = v41;
  nativeTime = nativeTimeCopy;
  if (!v15)
  {
    memset(&v58, 0, sizeof(v58));
    lhs.value = value;
    lhs.timescale = timescale;
    lhs.flags = flags;
    lhs.epoch = epoch;
    rhs.value = v61;
    rhs.timescale = v62;
    rhs.flags = v19;
    rhs.epoch = v45;
    CMTimeSubtract(&v58, &lhs, &rhs);
    lhs = v58;
    if (CMTimeGetSeconds(&lhs) <= 0.133333333 || (selfCopy->_previewFrameDuration.flags & 1) == 0)
    {
      v55.epoch = v45;
      rhs.value = value;
      rhs.timescale = timescale;
      rhs.flags = flags;
      rhs.epoch = epoch;
      v55.value = v61;
      v55.timescale = v62;
      v55.flags = v19;
      CMTimeSubtract(&lhs, &rhs, &v55);
      selfCopy->_previewFrameDuration = lhs;
    }

    memset(&lhs, 0, sizeof(lhs));
    rhs = selfCopy->_previewFrameDuration;
    CMTimeMultiply(&lhs, &rhs, 3);
    lastObject = [(NSMutableArray *)selfCopy->_timeSkews lastObject];
    v26 = lastObject;
    memset(&rhs, 0, sizeof(rhs));
    if (lastObject)
    {
      [lastObject native];
    }

    else
    {
      memset(&v55, 0, sizeof(v55));
    }

    time1 = *nativeTimeCopy;
    CMTimeSubtract(&rhs, &time1, &v55);
    memset(&v55, 0, sizeof(v55));
    CMTimeMake(&time1, 5, 1000);
    time2 = rhs;
    CMTimeAdd(&v55, &time2, &time1);
    time1 = v55;
    time2 = lhs;
    if (CMTimeCompare(&time1, &time2) >= 1)
    {
      [v26 setIsStartOfDiscontinuity:1];
      v27 = [BWIrisDiscontinuity alloc];
      if (v26)
      {
        [v26 original];
      }

      else
      {
        memset(&time1, 0, sizeof(time1));
      }

      generateIFrames = selfCopy->_generateIFrames;
      timeSkews = selfCopy->_timeSkews;
      time2 = v55;
      previewFrameDuration = selfCopy->_previewFrameDuration;
      p_time1 = &time1;
      p_time2 = &time2;
      p_previewFrameDuration = &previewFrameDuration;
      v34 = v27;
      v35 = 0;
LABEL_46:
      v36 = [(BWIrisDiscontinuity *)v34 initWithTime:p_time1 duration:p_time2 targetFrameDuration:p_previewFrameDuration onlyRetime:v35 generateIFrames:generateIFrames timeSkews:timeSkews];
      if (v36)
      {
        [(NSMutableArray *)selfCopy->_discontinuities addObject:v36];
      }

      goto LABEL_49;
    }

    if (v43)
    {
      [v43 original];
      if ((v50 & 0x100000000) != 0 && [v26 isBracketFrame] && objc_msgSend(v26, "isSISFrame") && (v41 & 1) == 0)
      {
        [v26 setIsStartOfDiscontinuity:1];
        memset(&time1, 0, sizeof(time1));
        [v43 native];
        previewFrameDuration = *nativeTimeCopy;
        CMTimeSubtract(&time1, &previewFrameDuration, &time2);
        v28 = [BWIrisDiscontinuity alloc];
        [v43 original];
        generateIFrames = selfCopy->_generateIFrames;
        timeSkews = selfCopy->_timeSkews;
        previewFrameDuration = time1;
        v47 = *&selfCopy->_previewFrameDuration.value;
        v48 = selfCopy->_previewFrameDuration.epoch;
        p_time1 = &time2;
        p_time2 = &previewFrameDuration;
        p_previewFrameDuration = &v47;
        v34 = v28;
        v35 = 1;
        goto LABEL_46;
      }
    }

    else
    {
      v49 = 0;
      v50 = 0;
      v51 = 0;
    }
  }

LABEL_49:
  if ([(NSMutableArray *)selfCopy->_discontinuities count]>= 0xC9)
  {
    [(NSMutableArray *)selfCopy->_discontinuities removeObjectAtIndex:0];
  }

  sFrameCopy = v42;
  time = timeCopy;
LABEL_52:
  v37 = [BWTimeSkew alloc];
  v58 = *nativeTime;
  lhs = *time;
  v38 = [(BWTimeSkew *)v37 initWithNativeTime:&v58 originalTime:&lhs isBracketFrame:frameCopy isSISFrame:sFrameCopy];
  [(NSMutableArray *)selfCopy->_timeSkews addObject:v38];

  if ([(NSMutableArray *)selfCopy->_timeSkews count]>= 0xC9)
  {
    [(NSMutableArray *)selfCopy->_timeSkews removeObjectAtIndex:0];
  }
}

- (void)enqueueSampleBuffer:(opaqueCMSampleBuffer *)buffer forMediaTypeWithIndex:(int64_t)index
{
  if (buffer)
  {
    memset(&v57, 0, sizeof(v57));
    CMSampleBufferGetPresentationTimeStamp(&v57, buffer);
    flags = v57.flags;
    v54 = 0;
    v52 = xmmword_1AD056798;
    v53 = 0;
    v8 = self->_mediaTypes[index];
    switch(v8)
    {
      case 0x6D657461u:
        v54 = CFRetain(buffer);
        if ((flags & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      case 0x76696465u:
        v10 = *MEMORY[0x1E69604E0];
        v11 = CMGetAttachment(buffer, *MEMORY[0x1E69604E0], 0);
        v12 = *MEMORY[0x1E695E4D0];
        v13 = v11 == *MEMORY[0x1E695E4D0];
        time2 = v57;
        [(BWIrisSequenceAdjuster *)self _adjustedTimeForVideoBufferWithTime:v13 forceKeepingBuffer:&v52 discontinuityFrameAttributesOut:&time1];
        value = time1.value;
        v9 = time1.flags;
        timescale = time1.timescale;
        epoch = time1.epoch;
        if (time1.flags)
        {
          if (self->_lastVideoAdjustedTime.flags)
          {
            time1.timescale = timescale;
            time2 = self->_lastVideoAdjustedTime;
            time1.value = value;
            if (CMTimeCompare(&time1, &time2) <= 0)
            {
              [BWIrisSequenceAdjuster enqueueSampleBuffer:forMediaTypeWithIndex:];
              goto LABEL_39;
            }
          }

          v16 = 0;
        }

        else
        {
          motionDataPreserver = self->_motionDataPreserver;
          v37 = v10;
          v38 = v12;
          v36 = motionDataPreserver == 0;
          if (motionDataPreserver)
          {
            v34 = time1.epoch;
            [(BWMotionDataPreserver *)motionDataPreserver preserveMotionDataForSoonToBeDroppedSampleBuffer:buffer];
          }

          else
          {
            if (self->_lastVideoAdjustedTime.flags)
            {
              CMTimeMake(&time2, self->_lastVideoAdjustedTime.timescale / 100, self->_lastVideoAdjustedTime.timescale);
              lhs = self->_lastVideoAdjustedTime;
              CMTimeAdd(&time1, &lhs, &time2);
            }

            else
            {
              CMSampleBufferGetPresentationTimeStamp(&time1, buffer);
            }

            value = time1.value;
            v9 = time1.flags;
            timescale = time1.timescale;
            v34 = time1.epoch;
          }

          v17 = objc_alloc_init(MEMORY[0x1E695DF90]);
          v45 = 0u;
          v46 = 0u;
          v47 = 0u;
          v48 = 0u;
          attachedMediaKeysToPreserve = self->_attachedMediaKeysToPreserve;
          v19 = [(NSArray *)attachedMediaKeysToPreserve countByEnumeratingWithState:&v45 objects:v44 count:16];
          if (v19)
          {
            v20 = v19;
            v21 = *v46;
            do
            {
              for (i = 0; i != v20; ++i)
              {
                if (*v46 != v21)
                {
                  objc_enumerationMutation(attachedMediaKeysToPreserve);
                }

                [v17 setObject:BWSampleBufferGetAttachedMedia(buffer forKeyedSubscript:{*(*(&v45 + 1) + 8 * i)), *(*(&v45 + 1) + 8 * i)}];
              }

              v20 = [(NSArray *)attachedMediaKeysToPreserve countByEnumeratingWithState:&v45 objects:v44 count:16];
            }

            while (v20);
          }

          v16 = v36;
          if ([v17 count])
          {

            self->_preservedAttachedMediaSbufByKeys = v17;
          }

          v10 = v37;
          v12 = v38;
          epoch = v35;
          if ((v9 & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        time1.value = value;
        time1.timescale = timescale;
        time1.flags = v9;
        time1.epoch = epoch;
        time2 = **&MEMORY[0x1E6960C70];
        BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(buffer, &time1, &time2.value, &v54);
        v23 = v54;
        if (!v54)
        {
          [BWIrisSequenceAdjuster enqueueSampleBuffer:forMediaTypeWithIndex:];
          goto LABEL_39;
        }

        self->_lastVideoAdjustedTime.value = value;
        self->_lastVideoAdjustedTime.timescale = timescale;
        self->_lastVideoAdjustedTime.flags = v9;
        self->_lastVideoAdjustedTime.epoch = epoch;
        v24 = CMGetAttachment(v23, *off_1E798A3C8, 0);
        if (v52 == 1)
        {
          [v24 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInt:", v53), 0x1F216ABB0}];
          [v24 setObject:objc_msgSend(MEMORY[0x1E696AD98] forKeyedSubscript:{"numberWithInteger:", *(&v52 + 1)), 0x1F216ABD0}];
          if (BYTE1(v52) == 1)
          {
            CMSetAttachment(v54, v10, v12, 1u);
          }
        }

        if (v16)
        {
          CMSetAttachment(v54, @"SampleDataToBeDropped", v12, 1u);
          [v24 setObject:MEMORY[0x1E695E118] forKeyedSubscript:0x1F21AA550];
          goto LABEL_37;
        }

        v26 = self->_motionDataPreserver;
        if (v26)
        {
          [(BWMotionDataPreserver *)v26 prependPreservedMotionDataToSampleBuffer:v54];
        }

        v42 = 0u;
        v43 = 0u;
        v40 = 0u;
        v41 = 0u;
        preservedAttachedMediaSbufByKeys = self->_preservedAttachedMediaSbufByKeys;
        v28 = [(NSMutableDictionary *)preservedAttachedMediaSbufByKeys countByEnumeratingWithState:&v40 objects:v39 count:16];
        if (v28)
        {
          v29 = v28;
          v30 = *v41;
          do
          {
            for (j = 0; j != v29; ++j)
            {
              if (*v41 != v30)
              {
                objc_enumerationMutation(preservedAttachedMediaSbufByKeys);
              }

              v32 = *(*(&v40 + 1) + 8 * j);
              if (!BWSampleBufferGetAttachedMedia(v54, v32))
              {
                v33 = [(NSMutableDictionary *)self->_preservedAttachedMediaSbufByKeys objectForKeyedSubscript:v32];
                BWSampleBufferSetAttachedMedia(v54, v32, v33);
              }
            }

            v29 = [(NSMutableDictionary *)preservedAttachedMediaSbufByKeys countByEnumeratingWithState:&v40 objects:v39 count:16];
          }

          while (v29);
        }

        self->_preservedAttachedMediaSbufByKeys = 0;
        if ((v9 & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      case 0x736F756Eu:
        time2 = v57;
        [(BWIrisSequenceAdjuster *)self _adjustedTimeForAudioBufferWithTime:&time1];
        value = time1.value;
        LOBYTE(v9) = time1.flags;
        timescale = time1.timescale;
        time2 = **&MEMORY[0x1E6960C70];
        BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(buffer, &time1, &time2.value, &v54);
        if (!v54)
        {
          [BWIrisSequenceAdjuster enqueueSampleBuffer:forMediaTypeWithIndex:];
          goto LABEL_39;
        }

LABEL_37:
        if ((v9 & 1) == 0)
        {
          goto LABEL_39;
        }

        break;
      default:
        if ((*(MEMORY[0x1E6960C70] + 12) & 1) == 0)
        {
LABEL_39:
          if (v54)
          {
            CFRelease(v54);
          }

          return;
        }

        break;
    }

    v25 = [(NSMutableArray *)self->_interleavingQueues objectAtIndexedSubscript:index];
    [v25 addObject:v54];
    goto LABEL_39;
  }
}

- (CMTime)_adjustedTimeForAudioBufferWithTime:(uint64_t)time@<X8>
{
  if (result)
  {
    v5 = result;
    *time = *&a2->value;
    *(time + 16) = a2->epoch;
    result = [*&result->timescale count];
    if (result)
    {
      if ((v5[1].value & 0x100000000) != 0)
      {
        lhs = *a2;
        v6 = *&v5->epoch;
        return CMTimeSubtract(time, &lhs, &v6);
      }
    }
  }

  else
  {
    *time = 0;
    *(time + 8) = 0;
    *(time + 16) = 0;
  }

  return result;
}

- (uint64_t)_adjustedTimeForVideoBufferWithTime:(unsigned int)time@<W2> forceKeepingBuffer:(uint64_t)buffer@<X3> discontinuityFrameAttributesOut:(uint64_t)out@<X8>
{
  if (result)
  {
    v8 = result;
    v9 = (result + 48);
    if ([*(result + 8) count])
    {
      v10 = (v8 + 48);
    }

    else
    {
      v10 = a2;
    }

    *out = *&v10->value;
    *(out + 16) = v10->epoch;
    v11 = MEMORY[0x1E6960C70];
    value = *MEMORY[0x1E6960C70];
    LODWORD(v12) = *(MEMORY[0x1E6960C70] + 12);
    timescale = *(MEMORY[0x1E6960C70] + 8);
    v13 = *(MEMORY[0x1E6960C70] + 16);
    v36 = 0u;
    v37 = 0u;
    v38 = 0u;
    v39 = 0u;
    v14 = *(v8 + 8);
    v15 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
    if (v15)
    {
      v21 = v15;
      v28 = v13;
      bufferCopy = buffer;
      v27 = v12;
      v22 = *v37;
LABEL_8:
      v23 = 0;
      while (1)
      {
        if (*v37 != v22)
        {
          objc_enumerationMutation(v14);
        }

        v12 = *(*(&v36 + 1) + 8 * v23);
        v34 = *a2;
        if ([v12 containsVideoBufferTime:&v34])
        {
          break;
        }

        if (v21 == ++v23)
        {
          v21 = [v14 countByEnumeratingWithState:&v36 objects:v35 count:16];
          if (v21)
          {
            goto LABEL_8;
          }

          v20 = 1;
          v13 = v28;
          LODWORD(v12) = v27;
          goto LABEL_20;
        }
      }

      v34 = *a2;
      v24 = [v12 shouldKeepBufferWithTime:&v34 forceKeepingBuffer:time nextAdjustedTimeInOut:v8 + 48 discontinuityFrameAttributesOut:bufferCopy];
      if (v12)
      {
        [v12 targetFrameDuration];
        LODWORD(v12) = v34.flags;
        epoch = v34.epoch;
      }

      else
      {
        epoch = 0;
        memset(&v34, 0, sizeof(v34));
      }

      value = v34.value;
      timescale = v34.timescale;
      if (v24)
      {
        v20 = 0;
        v13 = epoch;
        goto LABEL_20;
      }

      *out = *v11;
      *(out + 16) = v28;
    }

    else
    {
      v20 = 1;
LABEL_20:
      if ((*(out + 12) & 1) == 0)
      {
        *out = *&a2->value;
        *(out + 16) = a2->epoch;
      }

      if (v20)
      {
        memset(&v34, 0, sizeof(v34));
        v33 = *a2;
        [(BWIrisSequenceAdjuster *)v8 _originalDurationForVideoBufferWithTime:v16, v17, v18, v19, &v34];
        if ((v12 & 1) == 0)
        {
          value = *(v8 + 112);
          LODWORD(v12) = *(v8 + 124);
          timescale = *(v8 + 120);
          v13 = *(v8 + 128);
        }

        if ((v34.flags & 1) == 0)
        {
          v34.value = value;
          v34.timescale = timescale;
          v34.flags = v12;
          v34.epoch = v13;
        }

        lhs = *out;
        rhs = v34;
        CMTimeAdd(&v33, &lhs, &rhs);
        *v9 = *&v33.value;
        *(v8 + 64) = v33.epoch;
      }
    }

    v34 = *a2;
    result = [(BWIrisSequenceAdjuster *)v8 _indexOfTime:v16, v17, v18, v19];
    if (result != 0x7FFFFFFFFFFFFFFFLL)
    {
      v26 = [*(v8 + 80) objectAtIndexedSubscript:result];
      v34 = *out;
      return [v26 setAdjusted:&v34];
    }
  }

  else
  {
    *out = 0;
    *(out + 8) = 0;
    *(out + 16) = 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)audioOffsetForOriginalStillImageTime:(SEL)time
{
  v6 = *a4;
  v5 = **&MEMORY[0x1E6960C70];
  [(BWIrisSequenceAdjuster *)self _audioOffsetForOriginalStillImageTime:&v5 adjustedStillImageTime:retstr];
  return result;
}

- (void)_audioOffsetForOriginalStillImageTime:(CMTime *)time@<X2> adjustedStillImageTime:(uint64_t)imageTime@<X8>
{
  if (self)
  {
    flags = time->flags;
    if ((flags & 1) == 0)
    {
      lhs = *a2;
      [self adjustedTimeForTime:&lhs];
      *time = v13;
      flags = time->flags;
    }

    if (~flags & 0x11) != 0 && (flags)
    {
      lhs = *a2;
      v11 = *time;
      CMTimeSubtract(&v13, &lhs, &v11);
      v14 = *&v13.timescale;
      if (*(self + 28))
      {
        lhs.value = v13.value & ~(v13.value >> 63);
        *&lhs.timescale = v14;
        v11 = *(self + 16);
        CMTimeSubtract(&v13, &lhs, &v11);
        value = v13.value;
        v14 = *&v13.timescale;
      }

      else
      {
        *(self + 16) = v13.value & ~(v13.value >> 63);
        *(self + 24) = v14;
        value = *MEMORY[0x1E6960CC0];
        v14 = *(MEMORY[0x1E6960CC0] + 8);
        [(BWIrisSequenceAdjuster *)self _adjustTimesInAudioInterleavingQueues];
      }

      *imageTime = value;
      *(imageTime + 8) = v14;
    }

    else
    {
      v9 = MEMORY[0x1E6960C70];
      *imageTime = *MEMORY[0x1E6960C70];
      *(imageTime + 16) = *(v9 + 16);
    }
  }

  else
  {
    *imageTime = 0;
    *(imageTime + 8) = 0;
    *(imageTime + 16) = 0;
  }
}

- (opaqueCMSampleBuffer)dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:(int64_t)index
{
  v5 = [(NSMutableArray *)self->_interleavingQueues objectAtIndexedSubscript:?];
  result = [v5 count];
  if (result)
  {
    v7 = [v5 objectAtIndexedSubscript:0];
    v12 = 0;
    memset(&v11, 0, sizeof(v11));
    CMSampleBufferGetPresentationTimeStamp(&v11, v7);
    v8 = self->_mediaTypes[index];
    if (v8 != 1986618469)
    {
      if (v8 != 1936684398)
      {
        if (v8 == 1835365473)
        {
          v9 = v11;
          v10 = v11;
          if ([(NSMutableArray *)self->_discontinuities count])
          {
            v13 = v9;
            [(BWIrisSequenceAdjuster *)self adjustedTimeForTime:&v13];
          }

          if (v10.flags)
          {
            if ((v10.flags & 0x10) != 0)
            {
              return v12;
            }

            v13 = v10;
            v9 = **&MEMORY[0x1E6960C70];
            BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v7, &v13, &v9.value, &v12);
            if (!v12)
            {
              [BWIrisSequenceAdjuster dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:];
              return v12;
            }
          }
        }

LABEL_13:
        [v5 removeObjectAtIndex:0];
        return v12;
      }

      if ((self->_firstIrisAudioOffset.flags & 1) == 0)
      {
        return v12;
      }
    }

    v12 = CFRetain(v7);
    goto LABEL_13;
  }

  return result;
}

- (void)adjustMovieInfoTimes:(id)times
{
  memset(&v32[1], 0, sizeof(CMTime));
  if (times)
  {
    [times movieStartTime];
    memset(v32, 0, 24);
    [times movieEndTime];
    memset(&v31, 0, sizeof(v31));
    [times movieEndingVideoPTS];
    memset(&v30, 0, sizeof(v30));
    [times stillImageCaptureTime];
  }

  else
  {
    memset(v32, 0, 24);
    memset(&v31, 0, sizeof(v31));
    memset(&v30, 0, sizeof(v30));
  }

  memset(&v29[1], 0, sizeof(CMTime));
  if (self)
  {
    v29[0] = v32[1];
    [(BWIrisSequenceAdjuster *)self adjustedTimeForTime:v29];
    memset(v29, 0, 24);
    v28 = v31;
    [(BWIrisSequenceAdjuster *)self adjustedTimeForTime:&v28];
    memset(&v28, 0, sizeof(v28));
    v27 = v32[0];
    [(BWIrisSequenceAdjuster *)self adjustedTimeForTime:&v27];
  }

  else
  {
    memset(v29, 0, 24);
    memset(&v28, 0, sizeof(v28));
  }

  time1 = v29[0];
  time2 = self->_nextAdjustedVideoTime;
  CMTimeMinimum(&v27, &time1, &time2);
  v29[0] = v27;
  time1 = v28;
  time2 = self->_nextAdjustedVideoTime;
  CMTimeMinimum(&v27, &time1, &time2);
  v28 = v27;
  memset(&v27, 0, sizeof(v27));
  time1 = v30;
  [(BWIrisSequenceAdjuster *)self adjustedTimeForTime:&time1];
  v5 = MEMORY[0x1E6960C70];
  value = *MEMORY[0x1E6960C70];
  timescale = *(MEMORY[0x1E6960C70] + 8);
  if ((v29[1].flags & 0x11) == 1)
  {
    time1 = v29[1];
    [times setMovieStartTime:&time1];
    if (times)
    {
      [times movieStartTime];
    }

    else
    {
      memset(&v22, 0, sizeof(v22));
    }

    time1 = v22;
    [times setMovieTrimStartTime:&time1];
  }

  if ((v29[0].flags & 0x11) == 1)
  {
    time1 = v29[0];
    [times setMovieEndingVideoPTS:&time1];
  }

  if ((v28.flags & 0x11) == 1)
  {
    time1 = v28;
    [times setMovieEndTime:&time1];
    if (times)
    {
      [times movieEndTime];
    }

    else
    {
      memset(&v21[1], 0, 24);
    }

    time1 = *&v21[1];
    [times setMovieTrimEndTime:&time1];
  }

  if ((v27.flags & 0x11) == 1)
  {
    time1 = v27;
    [times setStillImageCaptureTime:&time1];
    return;
  }

  if ((v28.flags & 0x11) == 1)
  {
    v21[0] = 0;
    time1 = v30;
    [BWIrisSequenceAdjuster _getPreviousTimeSkewOut:v21 andNextTimeSkewOut:&v20 forTime:?];
    v6 = v21[0];
    if (v21[0])
    {
      [v21[0] adjusted];
      if (v19)
      {
        if (times)
        {
          [times audioOffset];
          if ((v17 & 0x100000000) != 0)
          {
            return;
          }
        }

        else
        {
          v16 = 0;
          v17 = 0;
          v18 = 0;
        }

        memset(&time1, 0, sizeof(time1));
        [v6 original];
        lhs = v30;
        CMTimeSubtract(&time1, &lhs, &time2);
        CMTimeMake(&time2, 800, 1000);
        lhs = time1;
        if (CMTimeCompare(&lhs, &time2) <= 0)
        {
          CMTimeMake(&lhs, 5, 1000);
          rhs = v28;
          CMTimeSubtract(&time2, &rhs, &lhs);
          epoch = time2.epoch;
          v27 = time2;
          value = time2.value;
          flags = time2.flags;
          timescale = time2.timescale;
        }

        else
        {
          flags = *(v5 + 12);
          epoch = *(v5 + 16);
          memset(&time2, 0, sizeof(time2));
          [v6 original];
          [v6 adjusted];
          CMTimeSubtract(&time2, &lhs, &rhs);
          if (time2.flags)
          {
            rhs = v30;
            v13 = time2;
            CMTimeSubtract(&lhs, &rhs, &v13);
            v27 = lhs;
          }
        }

        time2 = v30;
        lhs = v27;
        if (CMTimeCompare(&time2, &lhs))
        {
          memset(&time2, 0, sizeof(time2));
          lhs = v30;
          rhs = v27;
          [(BWIrisSequenceAdjuster *)self _audioOffsetForOriginalStillImageTime:&rhs adjustedStillImageTime:&time2];
          if (time2.flags)
          {
            lhs = time2;
            rhs = **&MEMORY[0x1E6960CC0];
            if ((CMTimeCompare(&lhs, &rhs) & 0x80000000) == 0)
            {
              lhs = v27;
              [times setStillImageCaptureTime:&lhs];
              lhs = time2;
              [times setAudioOffset:&lhs];
            }
          }
        }

        if (flags)
        {
          if (times)
          {
            [times stillImageCaptureTime];
          }

          else
          {
            memset(&time2, 0, sizeof(time2));
          }

          lhs.value = value;
          lhs.timescale = timescale;
          lhs.flags = flags;
          lhs.epoch = epoch;
          if (CMTimeCompare(&lhs, &time2) < 0)
          {
            time2.value = value;
            time2.timescale = timescale;
            time2.flags = flags;
            time2.epoch = epoch;
            [times setStillImageCaptureTime:&time2];
          }
        }

        if (times)
        {
          [times audioOffset];
          if ((v11 & 0x100000000) != 0)
          {
            return;
          }
        }

        else
        {
          v10 = 0;
          v11 = 0;
          v12 = 0;
        }

        if ([times isFinalEnqueuedIrisRequest])
        {
          CMTimeMake(&v9, 1, 1000);
          time2 = v9;
          [times setAudioOffset:&time2];
        }
      }
    }
  }
}

- (void)setMasterMovieOriginalStartTime:(id *)time
{
  v5 = *&time->var0;
  self->_masterMovieOriginalStartTime.epoch = time->var3;
  *&self->_masterMovieOriginalStartTime.value = v5;
  if ([(NSMutableArray *)self->_timeSkews count])
  {
    array = [MEMORY[0x1E695DF70] array];
    v41 = 0u;
    v42 = 0u;
    v43 = 0u;
    v44 = 0u;
    reverseObjectEnumerator = [(NSMutableArray *)self->_timeSkews reverseObjectEnumerator];
    v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v40 count:16];
    if (v8)
    {
      v9 = v8;
      v10 = *v42;
      v11 = MEMORY[0x1E6960C70];
LABEL_4:
      v12 = 0;
      while (1)
      {
        if (*v42 != v10)
        {
          objc_enumerationMutation(reverseObjectEnumerator);
        }

        v13 = *(*(&v41 + 1) + 8 * v12);
        if (v13)
        {
          [v13 original];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *time;
        if (CMTimeCompare(&time1, &time2) < 0)
        {
          break;
        }

        v14 = [v13 copy];
        time1 = *v11;
        [v14 setAdjusted:&time1];
        [array insertObject:v14 atIndex:0];

        if (v9 == ++v12)
        {
          v9 = [reverseObjectEnumerator countByEnumeratingWithState:&v41 objects:v40 count:16];
          if (v9)
          {
            goto LABEL_4;
          }

          break;
        }
      }
    }

    self->_timeSkews = array;
    v34 = 0u;
    v35 = 0u;
    v36 = 0u;
    v37 = 0u;
    discontinuities = self->_discontinuities;
    v16 = [(NSMutableArray *)discontinuities countByEnumeratingWithState:&v34 objects:v33 count:16];
    if (v16)
    {
      v17 = v16;
      v18 = *v35;
      do
      {
        for (i = 0; i != v17; ++i)
        {
          if (*v35 != v18)
          {
            objc_enumerationMutation(discontinuities);
          }

          [*(*(&v34 + 1) + 8 * i) resetWithNewTimeSkews:self->_timeSkews];
        }

        v17 = [(NSMutableArray *)discontinuities countByEnumeratingWithState:&v34 objects:v33 count:16];
      }

      while (v17);
    }
  }

  if ([(NSMutableArray *)self->_discontinuities count])
  {
    indexSet = [MEMORY[0x1E696AD50] indexSet];
    v29 = 0u;
    v30 = 0u;
    v31 = 0u;
    v32 = 0u;
    v21 = self->_discontinuities;
    v22 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v28 count:16];
    if (v22)
    {
      v23 = v22;
      v24 = 0;
      v25 = *v30;
LABEL_23:
      v26 = 0;
      while (1)
      {
        if (*v30 != v25)
        {
          objc_enumerationMutation(v21);
        }

        v27 = *(*(&v29 + 1) + 8 * v26);
        if (v27)
        {
          [v27 time];
        }

        else
        {
          memset(&time1, 0, sizeof(time1));
        }

        time2 = *time;
        if ((CMTimeCompare(&time1, &time2) & 0x80000000) == 0)
        {
          break;
        }

        [indexSet addIndex:v24++];
        if (v23 == ++v26)
        {
          v23 = [(NSMutableArray *)v21 countByEnumeratingWithState:&v29 objects:v28 count:16];
          if (v23)
          {
            goto LABEL_23;
          }

          break;
        }
      }
    }

    [(NSMutableArray *)self->_discontinuities removeObjectsAtIndexes:indexSet];
  }
}

- (CMTime)_originalDurationForVideoBufferWithTime:(uint64_t)time@<X2>
{
  if (!result)
  {
    *a7 = 0;
    *(a7 + 8) = 0;
    *(a7 + 16) = 0;
    return result;
  }

  v8 = result;
  lhs = *a2;
  result = [(BWIrisSequenceAdjuster *)result _indexOfTime:time, a4, a5, a6];
  if (result == 0x7FFFFFFFFFFFFFFFLL || (v9 = result, result = [*&v8[3].timescale count], v9 >= &result[-1].epoch + 7))
  {
    v12 = MEMORY[0x1E6960C70];
    *a7 = *MEMORY[0x1E6960C70];
    *(a7 + 16) = *(v12 + 16);
    return result;
  }

  v10 = [*&v8[3].timescale objectAtIndexedSubscript:v9];
  v11 = [*&v8[3].timescale objectAtIndexedSubscript:v9 + 1];
  if (!v11)
  {
    memset(&lhs, 0, sizeof(lhs));
    if (v10)
    {
      goto LABEL_6;
    }

LABEL_9:
    memset(&rhs, 0, sizeof(rhs));
    return CMTimeSubtract(a7, &lhs, &rhs);
  }

  [v11 original];
  if (!v10)
  {
    goto LABEL_9;
  }

LABEL_6:
  [v10 original];
  return CMTimeSubtract(a7, &lhs, &rhs);
}

- (BOOL)_getPreviousTimeSkewOut:(_BOOL8)result andNextTimeSkewOut:(void *)out forTime:(void *)time
{
  if (result)
  {
    v5 = result;
    *time = 0;
    *out = 0;
    v46 = 0u;
    v47 = 0u;
    v48 = 0u;
    v49 = 0u;
    reverseObjectEnumerator = [*(result + 80) reverseObjectEnumerator];
    v7 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v45 count:16];
    if (v7)
    {
      v8 = v7;
      v9 = *v47;
      while (2)
      {
        for (i = 0; i != v8; ++i)
        {
          if (*v47 != v9)
          {
            objc_enumerationMutation(reverseObjectEnumerator);
          }

          v11 = *(*(&v46 + 1) + 8 * i);
          if (v11)
          {
            [v11 adjusted];
            if (v44)
            {
              original = [v11 original];
              if (OUTLINED_FUNCTION_2_110(original, v13, v14, v15, v16, v17, v18, v19, v36, v37, v38, v39, v40, v41, v42, v43) < 1)
              {
                result = 0;
                *out = v11;
                return result;
              }
            }

            [v11 adjusted];
            if ((v38 & 0x100000000) != 0)
            {
              original2 = [v11 original];
              if (OUTLINED_FUNCTION_2_110(original2, v21, v22, v23, v24, v25, v26, v27, v36, v37, v38, v39, v40, v41, v42, v43) >= 1)
              {
                *time = v11;
              }
            }
          }

          else
          {
            OUTLINED_FUNCTION_4_85();
            v38 = 0;
            v39 = 0;
            v37 = 0;
          }
        }

        v8 = [reverseObjectEnumerator countByEnumeratingWithState:&v46 objects:v45 count:16];
        if (v8)
        {
          continue;
        }

        break;
      }
    }

    firstObject = [*(v5 + 80) firstObject];
    if (firstObject)
    {
      firstObject = [firstObject original];
    }

    else
    {
      v43 = 0;
    }

    return OUTLINED_FUNCTION_2_110(firstObject, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43) > 0;
  }

  return result;
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForTime:(SEL)time
{
  result = OUTLINED_FUNCTION_5_79(self, time, a4);
  if (!v87 || (v7 = result, result = [v87 adjusted], (v86 & 1) == 0))
  {
    v8 = MEMORY[0x1E6960C68];
    *v4 = *MEMORY[0x1E6960C68];
    var3 = *(v8 + 16);
LABEL_4:
    *(v4 + 16) = var3;
    return result;
  }

  if (v7)
  {
    *v4 = *&a4->var0;
    var3 = a4->var3;
    goto LABEL_4;
  }

  OUTLINED_FUNCTION_17_33();
  v10 = v88;
  if (v88)
  {
    original = [v88 original];
    OUTLINED_FUNCTION_7_68(original, v12, v13, v14, v15, v16, v17, v18, v60, v66, v71, v76, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
    OUTLINED_FUNCTION_13_39();
    [v88 original];
  }

  else
  {
    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_7_68(v19, v20, v21, v22, v23, v24, v25, v26, v60, v66, v71, v76, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
    OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_4_85();
  }

  OUTLINED_FUNCTION_6_76(a4->var3, v61, v67, v72, v77, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84);
  OUTLINED_FUNCTION_4_85();
  [v87 adjusted];
  if (v88)
  {
    [v88 adjusted];
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v27 = CMTimeSubtract(&v83, &lhs, rhs);
  OUTLINED_FUNCTION_10_51(v27, v28, v29, v30, v31, v32, v33, v34, v62, v68, v78, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, *&v83.value, v83.epoch);
  v43 = OUTLINED_FUNCTION_12_46(v35, v36, v37, v38, v39, v40, v41, v42, v63, v69, v73, v79, *rhs, *&rhs[16]);
  OUTLINED_FUNCTION_9_59(v44, v45, v46, v47, v48, v49, v50, v51, v43, v64, v70, v74, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v83.value, *&v83.timescale, v83.epoch, v84, v85);
  if (v10)
  {
    adjusted = [v10 adjusted];
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_8_55(adjusted, v53, v54, v55, v56, v57, v58, v59, v65, v75, v80, *rhs, *&rhs[8], *&rhs[16], *&lhs.value, lhs.epoch);
}

- ($3CC8671D27C23BF42ADDB32F2B5E48AE)adjustedTimeForStillImageTime:(SEL)time
{
  v6 = OUTLINED_FUNCTION_5_79(self, time, a4);
  if (!v91)
  {
    v87 = 0;
    v88 = 0;
    v89 = 0;
LABEL_7:
    v18 = v92;
    if (v92)
    {
      [v92 original];
      [v18 adjusted];
      result = CMTimeCompare(&time1, &time2);
      if (result)
      {
        goto LABEL_13;
      }

      [v18 original];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
      OUTLINED_FUNCTION_13_39();
      result = CMTimeCompare(&time1, &time2);
      if (result)
      {
        goto LABEL_13;
      }

      OUTLINED_FUNCTION_4_85();
    }

    OUTLINED_FUNCTION_6_76(a4->var3, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    CMTimeAbsoluteValue(&time1, &time2);
    CMTimeMake(&time2, a4->var1 / 1000, a4->var1);
    result = CMTimeCompare(&time1, &time2);
    if ((result & 0x80000000) != 0)
    {
      goto LABEL_14;
    }

LABEL_13:
    v19 = MEMORY[0x1E6960C68];
    *v4 = *MEMORY[0x1E6960C68];
    var3 = *(v19 + 16);
LABEL_15:
    *(v4 + 16) = var3;
    return result;
  }

  v7 = v6;
  result = [v91 adjusted];
  if ((v88 & 0x100000000) == 0)
  {
    goto LABEL_7;
  }

  if (v7)
  {
LABEL_14:
    *v4 = *&a4->var0;
    var3 = a4->var3;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_17_33();
  v9 = v92;
  if (v92)
  {
    original = [v92 original];
    OUTLINED_FUNCTION_7_68(original, v11, v12, v13, v14, v15, v16, v17, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    OUTLINED_FUNCTION_13_39();
    [v92 original];
  }

  else
  {
    OUTLINED_FUNCTION_4_85();
    OUTLINED_FUNCTION_7_68(v21, v22, v23, v24, v25, v26, v27, v28, v62, v68, v73, v78, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
    OUTLINED_FUNCTION_13_39();
    OUTLINED_FUNCTION_4_85();
  }

  OUTLINED_FUNCTION_6_76(a4->var3, v63, v69, v74, v79, *rhs, *&rhs[8], *&rhs[16], *&rhs[24], a4->var0, *&a4->var1, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, time2.value);
  OUTLINED_FUNCTION_4_85();
  [v91 adjusted];
  if (v92)
  {
    [v92 adjusted];
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  v29 = CMTimeSubtract(&v85, &lhs, rhs);
  OUTLINED_FUNCTION_10_51(v29, v30, v31, v32, v33, v34, v35, v36, v64, v70, v80, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, *&v85.value, v85.epoch);
  v45 = OUTLINED_FUNCTION_12_46(v37, v38, v39, v40, v41, v42, v43, v44, v65, v71, v75, v81, *rhs, *&rhs[16]);
  OUTLINED_FUNCTION_9_59(v46, v47, v48, v49, v50, v51, v52, v53, v45, v66, v72, v76, *rhs, *&rhs[16], *&rhs[24], lhs.value, *&lhs.timescale, lhs.epoch, v85.value, *&v85.timescale, v85.epoch, *&time2.value, time2.epoch);
  if (v9)
  {
    adjusted = [v9 adjusted];
  }

  else
  {
    OUTLINED_FUNCTION_66();
  }

  return OUTLINED_FUNCTION_8_55(adjusted, v55, v56, v57, v58, v59, v60, v61, v67, v77, v82, *rhs, *&rhs[8], *&rhs[16], *&lhs.value, lhs.epoch);
}

- (void)_adjustTimesInAudioInterleavingQueues
{
  if (self)
  {
    v32 = objc_alloc_init(MEMORY[0x1E695DF70]);
    v62 = 0u;
    v63 = 0u;
    v64 = 0u;
    v65 = 0u;
    obj = *(self + 40);
    v33 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
    if (v33)
    {
      v31 = *v63;
      v2 = -1;
      v3 = MEMORY[0x1E6960C70];
      do
      {
        v4 = 0;
        v29 = v2;
        do
        {
          if (*v63 != v31)
          {
            objc_enumerationMutation(obj);
          }

          v5 = *(*(&v62 + 1) + 8 * v4);
          ++v2;
          if (*(*(self + 72) + 4 * v2) == 1936684398)
          {
            array = [MEMORY[0x1E695DF70] array];
            v7 = [v32 addObject:array];
            v59 = 0u;
            v60 = 0u;
            v57 = 0u;
            v58 = 0u;
            v15 = OUTLINED_FUNCTION_9_16(v7, v8, v9, v10, v11, v12, v13, v14, v28, v29, obj, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39.value, *&v39.timescale, v39.epoch, cf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, 0);
            if (v15)
            {
              v16 = v15;
              v17 = *v58;
              do
              {
                for (i = 0; i != v16; ++i)
                {
                  if (*v58 != v17)
                  {
                    objc_enumerationMutation(v5);
                  }

                  v19 = *(*(&v57 + 1) + 8 * i);
                  cf = 0;
                  memset(&v39, 0, sizeof(v39));
                  CMSampleBufferGetPresentationTimeStamp(&v37, v19);
                  [(BWIrisSequenceAdjuster *)self _adjustedTimeForAudioBufferWithTime:&v39];
                  v37 = v39;
                  v34 = *v3;
                  v35 = *(v3 + 16);
                  BWCMSampleBufferCreateCopyWithNewTimingIncludingMetadata(v19, &v37, &v34, &cf);
                  [array addObject:cf];
                  CFRelease(cf);
                }

                v16 = OUTLINED_FUNCTION_9_16(v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, obj, v31, v32, v33, v34, *(&v34 + 1), v35, v36, v37.value, *&v37.timescale, v37.epoch, v38, v39.value, *&v39.timescale, v39.epoch, cf, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57);
              }

              while (v16);
            }
          }

          else
          {
            [v32 addObject:*(*(&v62 + 1) + 8 * v4)];
          }

          ++v4;
        }

        while (v4 != v33);
        v2 = v29 + v33;
        v33 = [obj countByEnumeratingWithState:&v62 objects:v61 count:16];
      }

      while (v33);
    }

    *(self + 40) = v32;
  }
}

- (uint64_t)_indexOfTime:(uint64_t)time
{
  if (!self)
  {
    return 0;
  }

  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v7 = *(self + 80);
  v8 = OUTLINED_FUNCTION_16_39(self, a2, time, a4, a5, a6);
  if (!v8)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  v9 = v8;
  v10 = 0;
  v11 = *v25;
LABEL_4:
  v12 = 0;
  v13 = v10;
  v10 += v9;
  while (1)
  {
    if (*v25 != v11)
    {
      objc_enumerationMutation(v7);
    }

    v14 = *(*(&v24 + 1) + 8 * v12);
    if (v14)
    {
      [v14 original];
    }

    else
    {
      memset(&time1, 0, sizeof(time1));
    }

    v22 = *a2;
    v15 = CMTimeCompare(&time1, &v22);
    if (!v15)
    {
      return v13;
    }

    ++v13;
    if (v9 == ++v12)
    {
      v9 = OUTLINED_FUNCTION_16_39(v15, v16, v17, v18, v19, v20);
      if (v9)
      {
        goto LABEL_4;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }
  }
}

- (uint64_t)enqueueSampleBuffer:forMediaTypeWithIndex:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)enqueueSampleBuffer:forMediaTypeWithIndex:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)enqueueSampleBuffer:forMediaTypeWithIndex:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

- (uint64_t)dequeueAndRetainAdjustedSampleBufferForMediaTypeWithIndex:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_11();
  return FigDebugAssert3();
}

@end