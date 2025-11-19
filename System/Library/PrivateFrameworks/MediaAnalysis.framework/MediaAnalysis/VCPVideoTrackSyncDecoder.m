@interface VCPVideoTrackSyncDecoder
- (VCPVideoTrackSyncDecoder)initWithTrack:(id)a3 timerange:(id *)a4;
- (int)decodeSample:(id *)a3 sample:(opaqueCMSampleBuffer *)a4;
- (int)findNextSample:(BOOL)a3 timerange:(id *)a4;
- (int64_t)status;
- (opaqueCMSampleBuffer)copyNextSampleBuffer;
- (void)dealloc;
- (void)decodeTask;
@end

@implementation VCPVideoTrackSyncDecoder

- (VCPVideoTrackSyncDecoder)initWithTrack:(id)a3 timerange:(id *)a4
{
  v6 = a3;
  v30.receiver = self;
  v30.super_class = VCPVideoTrackSyncDecoder;
  v7 = [(VCPVideoTrackDecoder *)&v30 initWithTrack:v6];
  if (v7)
  {
    if (v6)
    {
      [v6 timeRange];
    }

    else
    {
      memset(&range, 0, sizeof(range));
    }

    v9 = *&a4->var0.var3;
    *&v27.start.value = *&a4->var0.var0;
    *&v27.start.epoch = v9;
    *&v27.duration.timescale = *&a4->var1.var1;
    CMTimeRangeGetIntersection(&v29, &range, &v27);
    v11 = *&v29.start.epoch;
    v10 = *&v29.duration.timescale;
    *(v7 + 2) = *&v29.start.value;
    *(v7 + 3) = v11;
    *(v7 + 4) = v10;
    *(v7 + 80) = 0;
    v12 = dispatch_queue_create("com.apple.mediaanalysis.VCPVideoTrackSyncDecoder", 0);
    v13 = *(v7 + 11);
    *(v7 + 11) = v12;

    v14 = *(v7 + 12);
    *(v7 + 12) = 0;

    v15 = dispatch_semaphore_create(0);
    v16 = *(v7 + 13);
    *(v7 + 13) = v15;

    v17 = dispatch_semaphore_create(0);
    v18 = *(v7 + 14);
    *(v7 + 14) = v17;

    *(v7 + 120) = 0;
    *(v7 + 31) = 0;
    *(v7 + 128) = 0;
    *(v7 + 33) = 0;
    *(v7 + 34) = 0;
    *(v7 + 18) = 0;
    *(v7 + 19) = 0;
    dispatch_semaphore_signal(*(v7 + 13));
    dispatch_semaphore_signal(*(v7 + 13));
    v19 = MEMORY[0x1E6987E78];
    v20 = [*(v7 + 1) asset];
    v21 = [v19 assetReaderWithAsset:v20 error:0];
    v22 = *(v7 + 2);
    *(v7 + 2) = v21;

    v23 = [MEMORY[0x1E6987EA0] assetReaderSampleReferenceOutputWithTrack:*(v7 + 1)];
    v24 = *(v7 + 3);
    *(v7 + 3) = v23;

    [*(v7 + 2) addOutput:*(v7 + 3)];
    if ([*(v7 + 2) startReading])
    {
      v25 = v7;
    }

    else
    {
      v25 = 0;
    }

    v8 = v25;
  }

  else
  {
    v8 = 0;
  }

  return v8;
}

- (void)dealloc
{
  [(AVAssetReader *)self->_assetReader cancelReading];
  if (self->_group)
  {
    self->_cancelDecode = 1;
    dispatch_semaphore_signal(self->_inputSemaphore);
    dispatch_group_wait(self->_group, 0xFFFFFFFFFFFFFFFFLL);
  }

  v3 = 0;
  v4 = 1;
  do
  {
    v5 = v4;
    v6 = self->_sampleBuffer[v3];
    if (v6)
    {
      CFRelease(v6);
    }

    v4 = 0;
    v3 = 1;
  }

  while ((v5 & 1) != 0);
  v7.receiver = self;
  v7.super_class = VCPVideoTrackSyncDecoder;
  [(VCPVideoTrackSyncDecoder *)&v7 dealloc];
}

- (int64_t)status
{
  if (self->_decodeError)
  {
    return 3;
  }

  outputFrameIdx = self->_outputFrameIdx;
  if (dispatch_group_wait(self->_group, 0))
  {
    return 1;
  }

  v5 = outputFrameIdx & 1;
  if (outputFrameIdx < 0)
  {
    v5 = -v5;
  }

  if (self->_sampleBuffer[v5])
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

- (int)findNextSample:(BOOL)a3 timerange:(id *)a4
{
  v7 = 0;
  v8 = *MEMORY[0x1E6960C98];
  v9 = *(MEMORY[0x1E6960C98] + 32);
  *&a4->var0.var3 = *(MEMORY[0x1E6960C98] + 16);
  *&a4->var1.var1 = v9;
  *&a4->var0.var0 = v8;
  key = *MEMORY[0x1E6960458];
  cf2 = *MEMORY[0x1E695E4D0];
  v10 = MEMORY[0x1E6960CC0];
  while (1)
  {
    if (v7)
    {
      CFRelease(v7);
    }

    v11 = [(AVAssetReaderSampleReferenceOutput *)self->_trackReader copyNextSampleBuffer];
    if (!v11)
    {
      break;
    }

    v7 = v11;
    memset(&v26, 0, sizeof(v26));
    CMSampleBufferGetOutputPresentationTimeStamp(&start.start, v11);
    CMSampleBufferGetOutputDuration(&duration.start, v7);
    CMTimeRangeMake(&v26, &start.start, &duration.start);
    v12 = *&self->_timerange.start.epoch;
    *&duration.start.value = *&self->_timerange.start.value;
    *&duration.start.epoch = v12;
    *&duration.duration.timescale = *&self->_timerange.duration.timescale;
    otherRange = v26;
    CMTimeRangeGetIntersection(&start, &duration, &otherRange);
    v26 = start;
    if ((start.start.flags & 1) != 0 && (v26.duration.flags & 1) != 0 && !v26.duration.epoch && (v26.duration.value & 0x8000000000000000) == 0)
    {
      start.start = v26.duration;
      *&duration.start.value = *v10;
      duration.start.epoch = *(v10 + 16);
      if (CMTimeCompare(&start.start, &duration.start) >= 1)
      {
        if (a3 || (SampleAttachmentsArray = CMSampleBufferGetSampleAttachmentsArray(v7, 0)) != 0 && (v14 = SampleAttachmentsArray, CFArrayGetCount(SampleAttachmentsArray)) && ((ValueAtIndex = CFArrayGetValueAtIndex(v14, 0), (Value = CFDictionaryGetValue(ValueAtIndex, key)) == 0) || (v17 = Value, v18 = CFGetTypeID(Value), v18 != CFBooleanGetTypeID()) || !CFEqual(v17, cf2)))
        {
          v19 = *&v26.start.epoch;
          *&a4->var0.var0 = *&v26.start.value;
          *&a4->var0.var3 = v19;
          *&a4->var1.var1 = *&v26.duration.timescale;
          CFRelease(v7);
          return 0;
        }
      }
    }
  }

  if ([(AVAssetReader *)self->_assetReader status]== AVAssetReaderStatusCompleted)
  {
    return 0;
  }

  else
  {
    return -19;
  }
}

- (int)decodeSample:(id *)a3 sample:(opaqueCMSampleBuffer *)a4
{
  *a4 = 0;
  v7 = objc_autoreleasePoolPush();
  v8 = MEMORY[0x1E6987E78];
  v9 = [(AVAssetTrack *)self->super._track asset];
  v22 = 0;
  v10 = [v8 assetReaderWithAsset:v9 error:&v22];
  v11 = v22;

  if (v10)
  {
    v12 = v11 == 0;
  }

  else
  {
    v12 = 0;
  }

  if (!v12)
  {
    v13 = 0;
LABEL_9:
    v18 = -18;
    goto LABEL_10;
  }

  v14 = *&a3->var0.var3;
  v21[0] = *&a3->var0.var0;
  v21[1] = v14;
  v21[2] = *&a3->var1.var1;
  [v10 setTimeRange:v21];
  v15 = MEMORY[0x1E6987EA8];
  track = self->super._track;
  v17 = [(VCPVideoTrackDecoder *)self settings];
  v13 = [v15 assetReaderTrackOutputWithTrack:track outputSettings:v17];

  if (!v13)
  {
    goto LABEL_9;
  }

  [v13 setAppliesPreferredTrackTransform:1];
  if (![v10 canAddOutput:v13])
  {
    goto LABEL_9;
  }

  [v10 addOutput:v13];
  if ([v10 status])
  {
    goto LABEL_9;
  }

  if ([v10 startReading])
  {
    v20 = [v13 copyNextSampleBuffer];
    *a4 = v20;
    if (v20)
    {
      v18 = 0;
    }

    else
    {
      v18 = -19;
    }
  }

  else
  {
    v18 = -19;
  }

LABEL_10:
  if ([v10 status] == 1)
  {
    [v10 cancelReading];
  }

  objc_autoreleasePoolPop(v7);
  return v18;
}

- (void)decodeTask
{
  memset(&v19, 0, sizeof(v19));
  v3 = *&self->_timerange.start.epoch;
  *&v11.duration.value = *&self->_timerange.start.value;
  *&v11.duration.epoch = v3;
  *&v11.presentationTimeStamp.timescale = *&self->_timerange.duration.timescale;
  CMTimeRangeGetEnd(&v19, &v11);
  v4 = MEMORY[0x1E6960C98];
  v5 = *(MEMORY[0x1E6960C98] + 16);
  v16 = *MEMORY[0x1E6960C98];
  v17 = v5;
  v18 = *(MEMORY[0x1E6960C98] + 32);
  originalSBuf = 0;
  v6 = [(VCPVideoTrackSyncDecoder *)self findNextSample:1 timerange:&v16];
  if (!v6)
  {
    if (BYTE12(v16))
    {
      while (1)
      {
        v6 = 0;
        if ((BYTE4(v18) & 1) == 0 || *(&v18 + 1) || (*(&v17 + 1) & 0x8000000000000000) != 0)
        {
          break;
        }

        dispatch_semaphore_wait(self->_inputSemaphore, 0xFFFFFFFFFFFFFFFFLL);
        if (self->_cancelDecode)
        {
          goto LABEL_3;
        }

        v7 = v4[1];
        v12 = *v4;
        v13 = v7;
        v14 = v4[2];
        v8 = [(VCPVideoTrackSyncDecoder *)self findNextSample:0 timerange:&v12];
        if (v8)
        {
          goto LABEL_22;
        }

        *&v11.duration.value = v16;
        *&v11.duration.epoch = v17;
        *&v11.presentationTimeStamp.timescale = v18;
        v8 = [(VCPVideoTrackSyncDecoder *)self decodeSample:&v11 sample:&originalSBuf];
        if (v8)
        {
          goto LABEL_22;
        }

        if (BYTE12(v12))
        {
          v9 = &v12;
          if ((BYTE4(v14) & (*(&v14 + 1) == 0) & (v13 >= 0)) == 0)
          {
            v9 = &v19;
          }
        }

        else
        {
          v9 = &v19;
        }

        lhs = *v9;
        memset(&v11, 0, sizeof(v11));
        *&rhs.value = v16;
        rhs.epoch = v17;
        CMTimeSubtract(&v11.duration, &lhs, &rhs);
        *&v11.presentationTimeStamp.value = v16;
        v11.presentationTimeStamp.epoch = v17;
        *&v11.decodeTimeStamp.value = v16;
        v11.decodeTimeStamp.epoch = v17;
        v10 = self->_decodedFrames >= 0 ? self->_decodedFrames & 1 : -(self->_decodedFrames & 1);
        v8 = CMSampleBufferCreateCopyWithNewTiming(0, originalSBuf, 1, &v11, &self->_sampleBuffer[v10]);
        if (v8)
        {
LABEL_22:
          v6 = v8;
          break;
        }

        if (originalSBuf)
        {
          CFRelease(originalSBuf);
          originalSBuf = 0;
        }

        dispatch_semaphore_signal(self->_outputSemaphore);
        v16 = v12;
        v17 = v13;
        v18 = v14;
        ++self->_decodedFrames;
        if ((BYTE12(v16) & 1) == 0)
        {
          goto LABEL_3;
        }
      }
    }

    else
    {
LABEL_3:
      v6 = 0;
    }

    if (originalSBuf)
    {
      CFRelease(originalSBuf);
    }
  }

  self->_decodeError = v6;
  self->_decodeFinished = 1;
  dispatch_semaphore_signal(self->_outputSemaphore);
}

- (opaqueCMSampleBuffer)copyNextSampleBuffer
{
  v2 = self;
  objc_sync_enter(v2);
  if (!v2->_launchOnce)
  {
    v3 = dispatch_group_create();
    group = v2->_group;
    v2->_group = v3;

    v5 = v2->_group;
    queue = v2->_queue;
    block[0] = MEMORY[0x1E69E9820];
    block[1] = 3221225472;
    block[2] = __48__VCPVideoTrackSyncDecoder_copyNextSampleBuffer__block_invoke;
    block[3] = &unk_1E834BDC0;
    block[4] = v2;
    dispatch_group_async(v5, queue, block);
    v2->_launchOnce = 1;
  }

  objc_sync_exit(v2);

  if (v2->_decodeError || v2->_decodeFinished && v2->_outputFrameIdx >= v2->_decodedFrames)
  {
    return 0;
  }

  dispatch_semaphore_wait(v2->_outputSemaphore, 0xFFFFFFFFFFFFFFFFLL);
  if (v2->_decodeError)
  {
    return 0;
  }

  outputFrameIdx = v2->_outputFrameIdx;
  if (v2->_decodeFinished && outputFrameIdx >= v2->_decodedFrames)
  {
    return 0;
  }

  v10 = v2->_outputFrameIdx & 1;
  if (outputFrameIdx < 0)
  {
    v10 = -v10;
  }

  v7 = v2->_sampleBuffer[v10];
  v2->_sampleBuffer[v10] = 0;
  v2->_outputFrameIdx = outputFrameIdx + 1;
  dispatch_semaphore_signal(v2->_inputSemaphore);
  return v7;
}

@end