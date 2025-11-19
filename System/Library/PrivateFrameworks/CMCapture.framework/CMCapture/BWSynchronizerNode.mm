@interface BWSynchronizerNode
- (BWSynchronizerNode)initWithMediaType:(unsigned int)a3;
- (CMSampleBufferRef)_newRetimedVideoSampleBuffer:(int)a3 updatePTSSyncHistory:;
- (OpaqueCMClock)masterClock;
- (OpaqueCMClock)sourceClock;
- (__n128)_updatePTSSyncHistoryWithSourceTime:(__n128 *)a3 syncedTime:;
- (uint64_t)_synchronizeDetectedFaces:(uint64_t)a3 metadata:(int32_t)a4 timescale:;
- (void)_getSyncedTimeForSourceTime:(uint64_t)a3@<X8>;
- (void)dealloc;
- (void)handleDroppedSample:(id)a3 forInput:(id)a4;
- (void)prepareForCurrentConfigurationToBecomeLive;
- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4;
- (void)setMasterClock:(OpaqueCMClock *)a3;
- (void)setQuantizationFrameDuration:(id *)a3;
- (void)setSourceClock:(OpaqueCMClock *)a3;
@end

@implementation BWSynchronizerNode

- (void)prepareForCurrentConfigurationToBecomeLive
{
  if (!self->_masterClock || !self->_sourceClock)
  {
    objc_exception_throw([MEMORY[0x1E695DF30] exceptionWithName:*MEMORY[0x1E695D940] reason:@"master and source clock must be set" userInfo:{0, v2, v3}]);
  }
}

- (BWSynchronizerNode)initWithMediaType:(unsigned int)a3
{
  v3 = *&a3;
  v11.receiver = self;
  v11.super_class = BWSynchronizerNode;
  v4 = [(BWNode *)&v11 init];
  if (v4)
  {
    v5 = [[BWNodeInput alloc] initWithMediaType:v3 node:v4];
    if (v3 == 1986618469)
    {
      v6 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeInput *)v5 setFormatRequirements:v6];
    }

    [(BWNodeInput *)v5 setPassthroughMode:1];
    [(BWNode *)v4 addInput:v5];

    v7 = [[BWNodeOutput alloc] initWithMediaType:v3 node:v4];
    if (v3 == 1986618469)
    {
      v8 = objc_alloc_init(BWVideoFormatRequirements);
      [(BWNodeOutput *)v7 setFormatRequirements:v8];
    }

    [(BWNodeOutput *)v7 setPassthroughMode:1];
    [(BWNodeOutput *)v7 setDropsSampleBuffersWithUnexpectedPTS:1];
    v9 = MEMORY[0x1E6960C70];
    *&v4->_quantizationFrameDuration.value = *MEMORY[0x1E6960C70];
    v4->_quantizationFrameDuration.epoch = *(v9 + 16);
    v4->_maxFramesToDropWhileTimeSyncClockStarts = 25;
    v4->_oldestPTSSyncHistoryElement = -1;
    v4->_newestPTSSyncHistoryElement = -1;
    v4->_timeSyncMSGClockConversionFailureCount = 0;
    [(BWNode *)v4 addOutput:v7];

    [(BWNode *)v4 setSupportsLiveReconfiguration:1];
    [(BWNode *)v4 setSupportsPrepareWhileRunning:1];
  }

  return v4;
}

- (void)dealloc
{
  sourceClock = self->_sourceClock;
  if (sourceClock)
  {
    CFRelease(sourceClock);
  }

  masterClock = self->_masterClock;
  if (masterClock)
  {
    CFRelease(masterClock);
  }

  v5.receiver = self;
  v5.super_class = BWSynchronizerNode;
  [(BWNode *)&v5 dealloc];
}

- (OpaqueCMClock)sourceClock
{
  sourceClock = self->_sourceClock;
  if (sourceClock)
  {
    CFRetain(self->_sourceClock);
    CFAutorelease(sourceClock);
  }

  return sourceClock;
}

- (void)setSourceClock:(OpaqueCMClock *)a3
{
  sourceClock = self->_sourceClock;
  self->_sourceClock = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (sourceClock)
  {

    CFRelease(sourceClock);
  }
}

- (OpaqueCMClock)masterClock
{
  masterClock = self->_masterClock;
  if (masterClock)
  {
    CFRetain(self->_masterClock);
    CFAutorelease(masterClock);
  }

  return masterClock;
}

- (void)setMasterClock:(OpaqueCMClock *)a3
{
  masterClock = self->_masterClock;
  self->_masterClock = a3;
  if (a3)
  {
    CFRetain(a3);
  }

  if (masterClock)
  {

    CFRelease(masterClock);
  }
}

- (void)setQuantizationFrameDuration:(id *)a3
{
  if (a3->var2)
  {
    var3 = a3->var3;
    *&self->_quantizationFrameDuration.value = *&a3->var0;
    self->_quantizationFrameDuration.epoch = var3;
    self->_oldestPTSSyncHistoryElement = -1;
    self->_newestPTSSyncHistoryElement = -1;
    ptsSyncHistory = self->_ptsSyncHistory;
    v5 = 16;
    v6 = *MEMORY[0x1E6960C70];
    v7 = *(MEMORY[0x1E6960C70] + 16);
    do
    {
      *&ptsSyncHistory->sourceTime.value = v6;
      ptsSyncHistory->sourceTime.epoch = v7;
      *&ptsSyncHistory->syncedTime.value = v6;
      ptsSyncHistory->syncedTime.epoch = v7;
      ++ptsSyncHistory;
      --v5;
    }

    while (v5);
    quantizationFrameDuration = self->_quantizationFrameDuration;
    self->_maxFramesToDropWhileTimeSyncClockStarts = 2 * (125000000.0 / (CMTimeGetSeconds(&quantizationFrameDuration) * 1000000000.0)) + 7;
  }
}

- (void)renderSampleBuffer:(opaqueCMSampleBuffer *)a3 forInput:(id)a4
{
  flags = self->_quantizationFrameDuration.flags;
  v7 = FigCFEqual();
  if (a3)
  {
    if (v7)
    {
      v8 = (flags & 1) == 0;
    }

    else
    {
      v8 = 0;
    }

    if (v8)
    {
      v12 = 0;
      v10 = 0;
      goto LABEL_13;
    }

    v9 = [(BWSynchronizerNode *)self _newRetimedVideoSampleBuffer:a3 updatePTSSyncHistory:1];
    if (v9)
    {
      v10 = v9;
      AttachedMedia = BWSampleBufferGetAttachedMedia(a3, @"SynchronizedSlaveFrame");
      if (AttachedMedia)
      {
        v12 = [(BWSynchronizerNode *)self _newRetimedVideoSampleBuffer:0 updatePTSSyncHistory:?];
        if (!v12)
        {
          [BWSynchronizerNode renderSampleBuffer:forInput:];
          goto LABEL_13;
        }

        BWSampleBufferSetAttachedMedia(v10, @"SynchronizedSlaveFrame", v12);
      }

      else
      {
        v12 = 0;
      }

      BWSynchronizeSmartStyleAttachedMediaPTS(v10);
      a3 = v10;
LABEL_13:
      [(BWNodeOutput *)self->super._output emitSampleBuffer:a3];
      if (v10)
      {
        CFRelease(v10);
      }

      if (v12)
      {

        CFRelease(v12);
      }

      return;
    }

    [BWSynchronizerNode renderSampleBuffer:forInput:];
  }

  else
  {
    [BWSynchronizerNode renderSampleBuffer:forInput:];
  }

  if (flags)
  {
    memset(&v16, 0, sizeof(v16));
    CMSampleBufferGetPresentationTimeStamp(&v16, a3);
    v15 = v16;
    v13 = [BWDroppedSample newDroppedSampleWithReason:0x1F219C1F0 pts:&v15];
    [(BWNodeOutput *)self->super._output emitDroppedSample:v13];
  }

  else
  {
    output = self->super._output;

    [(BWNodeOutput *)output emitSampleBuffer:a3];
  }
}

- (CMSampleBufferRef)_newRetimedVideoSampleBuffer:(int)a3 updatePTSSyncHistory:
{
  if (result)
  {
    v5 = result;
    sampleBufferOut[0] = 0;
    memset(&timingArrayOut, 0, sizeof(timingArrayOut));
    memset(&v76, 0, sizeof(v76));
    if (CMSampleBufferGetSampleTimingInfoArray(sbuf, 1, &timingArrayOut, 0))
    {
      [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
      goto LABEL_62;
    }

    presentationTimeStamp = timingArrayOut.presentationTimeStamp;
    if (timingArrayOut.duration.flags)
    {
      lhs = timingArrayOut.duration;
      rhs = timingArrayOut.presentationTimeStamp;
      CMTimeAdd(&v76, &lhs, &rhs);
    }

    sbufa = sbuf;
    if ((timingArrayOut.presentationTimeStamp.flags & 1) == 0)
    {
LABEL_23:
      if (timingArrayOut.decodeTimeStamp.flags)
      {
        v23 = *(v5 + 128);
        v24 = *(v5 + 136);
        rhs = timingArrayOut.decodeTimeStamp;
        CMSyncConvertTime(&lhs, &rhs, v23, v24);
        timingArrayOut.decodeTimeStamp = lhs;
      }

      if (timingArrayOut.duration.flags)
      {
        v25 = *(v5 + 128);
        v26 = *(v5 + 136);
        rhs = v76;
        CMSyncConvertTime(&lhs, &rhs, v25, v26);
        v76 = lhs;
        rhs = lhs;
        v73 = timingArrayOut.presentationTimeStamp;
        CMTimeSubtract(&lhs, &rhs, &v73);
        timingArrayOut.duration = lhs;
      }

      v27 = CFGetAllocator(sbuf);
      if (!CMSampleBufferCreateCopyWithNewTiming(v27, sbuf, 1, &timingArrayOut, sampleBufferOut))
      {
        v28 = *MEMORY[0x1E695E480];
        lhs = presentationTimeStamp;
        v29 = CMTimeCopyAsDictionary(&lhs, v28);
        CMSetAttachment(sampleBufferOut[0], *off_1E798A420, v29, 1u);
        CFRelease(v29);
        v30 = CMGetAttachment(sbuf, *off_1E798A3C8, 0);
        if (v30)
        {
          v31 = v30;
          v32 = [v30 objectForKeyedSubscript:*off_1E798D030];
          if (v32)
          {
            v33 = v32;
            if ([v32 count])
            {
              CMSampleBufferGetPresentationTimeStamp(&v67, sbuf);
              [(BWSynchronizerNode *)v5 _synchronizeDetectedFaces:v33 metadata:v31 timescale:v67.timescale];
            }
          }

          v34 = *off_1E798B220;
          v35 = [v31 objectForKeyedSubscript:*off_1E798B220];
          v63 = 0u;
          v64 = 0u;
          v65 = 0u;
          v66 = 0u;
          v36 = [v35 countByEnumeratingWithState:&v63 objects:v62 count:16];
          if (v36)
          {
            v37 = v36;
            v56 = v31;
            v58 = v5;
            v38 = 0;
            v39 = *v64;
            v40 = *off_1E798B780;
            v57 = *off_1E798ACF0;
            do
            {
              for (i = 0; i != v37; ++i)
              {
                if (*v64 != v39)
                {
                  objc_enumerationMutation(v35);
                }

                v42 = *(*(&v63 + 1) + 8 * i);
                v43 = [v35 objectForKeyedSubscript:v42];
                if (v43)
                {
                  v44 = v43;
                  objc_opt_class();
                  if (objc_opt_isKindOfClass())
                  {
                    memset(&lhs, 0, sizeof(lhs));
                    [objc_msgSend(v44 objectForKeyedSubscript:{v40), "longLongValue"}];
                    v45 = FigHostTimeToNanoseconds();
                    CMTimeMake(&rhs, v45, 1000000000);
                    CMSampleBufferGetPresentationTimeStamp(&v61, sbufa);
                    CMTimeConvertScale(&lhs, &rhs, v61.timescale, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                    memset(&rhs, 0, sizeof(rhs));
                    v73 = lhs;
                    [(BWSynchronizerNode *)v58 _getSyncedTimeForSourceTime:&rhs];
                    v73 = rhs;
                    CMTimeConvertScale(&v60, &v73, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
                    v46 = [MEMORY[0x1E696AD98] numberWithLongLong:FigNanosecondsToHostTime()];
                    v47 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v44];
                    [v47 setObject:objc_msgSend(objc_msgSend(v35 forKeyedSubscript:{"objectForKeyedSubscript:", v42), "objectForKeyedSubscript:", v40), v57}];
                    [v47 setObject:v46 forKeyedSubscript:v40];
                    if (!v38)
                    {
                      v38 = [objc_alloc(MEMORY[0x1E695DF90]) initWithDictionary:v35];
                    }

                    [v38 setObject:v47 forKeyedSubscript:v42];
                  }
                }
              }

              v37 = [v35 countByEnumeratingWithState:&v63 objects:v62 count:16];
            }

            while (v37);
            if (v38)
            {
              [v56 setObject:v38 forKeyedSubscript:v34];
            }
          }
        }

        return sampleBufferOut[0];
      }

      [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
LABEL_62:
      [BWSynchronizerNode _newRetimedVideoSampleBuffer:? updatePTSSyncHistory:?];
      return sampleBufferOut[0];
    }

    rhs = timingArrayOut.presentationTimeStamp;
    memset(&v73, 0, sizeof(v73));
    v6 = *(v5 + 128);
    v7 = *(v5 + 136);
    lhs = timingArrayOut.presentationTimeStamp;
    CMSyncConvertTime(&v73, &lhs, v6, v7);
    if ((*(v5 + 156) & 1) == 0)
    {
      v8 = *(v5 + 128);
      v9 = *(v5 + 136);
      time = rhs;
      CMSyncConvertTime(&lhs, &time, v8, v9);
LABEL_20:
      *&timingArrayOut.presentationTimeStamp.value = *&lhs.value;
      epoch = lhs.epoch;
      goto LABEL_21;
    }

    if ((v73.flags & 1) == 0)
    {
      if (FigCaptureIsCMClockFromTimeSyncMSGClock())
      {
        if (*(v5 + 168) == ++*(v5 + 952))
        {
          v53 = [MEMORY[0x1E696AEC0] stringWithFormat:@"TimeSync clock backed by MSG took too long to create, CMSyncConvertTime is not converting time.\n_sounceClock: %@\n_masterClock: %@\n", *(v5 + 128), *(v5 + 136)];
          LODWORD(v69.value) = 0;
          LOBYTE(type.value) = 0;
          os_log_and_send_and_compose_flags_and_os_log_type = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
          os_log_type_enabled(os_log_and_send_and_compose_flags_and_os_log_type, OS_LOG_TYPE_DEFAULT);
          fig_log_call_emit_and_clean_up_after_send_and_compose();
          LOWORD(lhs.value) = 0;
          v55 = _os_log_send_and_compose_impl();
          FigCapturePleaseFileRadar(1, v55, v53, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSynchronizerNode.m", 594, @"LastShownDate:BWSynchronizerNode.m:594", @"LastShownBuild:BWSynchronizerNode.m:594", 1);
          free(v55);
          if (os_variant_has_internal_diagnostics())
          {
            if (*(v5 + 176 + 48 * *(v5 + 948) + 32) != *(v5 + 152))
            {
              [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
            }
          }
        }

        [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
        goto LABEL_62;
      }

      v10 = [MEMORY[0x1E696AEC0] stringWithFormat:@"CMSyncConvertTime failed to convert time, _sounceClock: %@, _masterClock: %@\n", *(v5 + 128), *(v5 + 136)];
      LODWORD(v69.value) = 0;
      LOBYTE(type.value) = 0;
      v11 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v11, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(lhs.value) = 0;
      v12 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(1, v12, v10, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSynchronizerNode.m", 606, @"LastShownDate:BWSynchronizerNode.m:606", @"LastShownBuild:BWSynchronizerNode.m:606", 1);
      free(v12);
      if (os_variant_has_internal_diagnostics() && *(v5 + 176 + 48 * *(v5 + 948) + 32) != *(v5 + 152))
      {
        [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
      }
    }

    v13 = *(v5 + 948);
    if ((v13 & 0x80000000) != 0 || (*(v5 + 176 + 48 * v13 + 12) & 1) == 0)
    {
      v21 = *(v5 + 152);
      time = v73;
      CMTimeConvertScale(&lhs, &time, v21, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
      goto LABEL_20;
    }

    memset(&time, 0, sizeof(time));
    v14 = *(v5 + 152);
    lhs = v73;
    CMTimeConvertScale(&time, &lhs, v14, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v15 = *(v5 + 948);
    v16 = v5 + 176 + 48 * v15;
    v17 = *(v16 + 32);
    v18 = *(v5 + 152);
    if (v17 != v18)
    {
      v19 = [MEMORY[0x1E696AEC0] stringWithFormat:@"history {%lld/%d} and _quantizationFrameDuration {%lld/%d} don't have matching timescale", *(v16 + 24), v17, *(v5 + 144), v18];
      LODWORD(type.value) = 0;
      v70 = OS_LOG_TYPE_DEFAULT;
      v20 = fig_log_emitter_get_os_log_and_send_and_compose_flags_and_os_log_type();
      os_log_type_enabled(v20, OS_LOG_TYPE_DEFAULT);
      fig_log_call_emit_and_clean_up_after_send_and_compose();
      LOWORD(lhs.value) = 0;
      v48 = _os_log_send_and_compose_impl();
      FigCapturePleaseFileRadar(1, v48, v19, 0, "/Library/Caches/com.apple.xbs/Sources/CameraCapture/CMCapture/Sources/Graph/Nodes/BWSynchronizerNode.m", 628, @"LastShownDate:BWSynchronizerNode.m:628", @"LastShownBuild:BWSynchronizerNode.m:628", 1);
      free(v48);
      if (os_variant_has_internal_diagnostics())
      {
        v15 = *(v5 + 948);
        LODWORD(v17) = *(v5 + 176 + 48 * v15 + 32);
        if (v17 != *(v5 + 152))
        {
          [BWSynchronizerNode _newRetimedVideoSampleBuffer:updatePTSSyncHistory:];
        }
      }

      else
      {
        v15 = *(v5 + 948);
        LODWORD(v17) = *(v5 + 152);
      }
    }

    memset(&lhs, 0, sizeof(lhs));
    CMTimeMake(&lhs, time.value - *(v5 + 176 + 48 * v15 + 24), v17);
    memset(&v69, 0, sizeof(v69));
    v49 = *(v5 + 152);
    type = v73;
    CMTimeConvertScale(&v69, &type, v49, kCMTimeRoundingMethod_RoundHalfAwayFromZero);
    v50 = *(v5 + 144);
    if (lhs.value >= v50)
    {
      if (lhs.value <= *(v5 + 144))
      {
        *&timingArrayOut.presentationTimeStamp.value = *&v69.value;
        epoch = v69.epoch;
LABEL_21:
        timingArrayOut.presentationTimeStamp.epoch = epoch;
        if (a3)
        {
          lhs = rhs;
          time = timingArrayOut.presentationTimeStamp;
          [(BWSynchronizerNode *)v5 _updatePTSSyncHistoryWithSourceTime:&time syncedTime:?];
        }

        goto LABEL_23;
      }

      v51 = *(v5 + 152);
      v52 = *(v5 + 176 + 48 * *(v5 + 948) + 24) + lhs.value / v50 * v50;
    }

    else
    {
      v51 = *(v5 + 152);
      v52 = *(v5 + 176 + 48 * *(v5 + 948) + 24) + v50;
    }

    CMTimeMake(&type, v52, v51);
    *&timingArrayOut.presentationTimeStamp.value = *&type.value;
    epoch = type.epoch;
    goto LABEL_21;
  }

  return result;
}

- (void)handleDroppedSample:(id)a3 forInput:(id)a4
{
  if (FigCFEqual())
  {
    goto LABEL_2;
  }

  memset(&v13, 0, sizeof(v13));
  if (a3)
  {
    [a3 pts];
  }

  memset(&v12, 0, sizeof(v12));
  sourceClock = self->_sourceClock;
  masterClock = self->_masterClock;
  time = v13;
  CMSyncConvertTime(&v12, &time, sourceClock, masterClock);
  time = v13;
  v10 = v12;
  if (!CMTimeCompare(&time, &v10))
  {
LABEL_2:
    [(BWNodeOutput *)self->super._output emitDroppedSample:a3];
  }

  else
  {
    v8 = [a3 reason];
    time = v12;
    v9 = [BWDroppedSample newDroppedSampleWithReason:v8 pts:&time];
    [(BWNodeOutput *)self->super._output emitDroppedSample:v9];
  }
}

- (void)_getSyncedTimeForSourceTime:(uint64_t)a3@<X8>
{
  if (a1)
  {
    if (*(a1 + 944) == -1)
    {
LABEL_15:
      v15 = *(a1 + 128);
      v16 = *(a1 + 136);
      time1 = *a2;
      CMSyncConvertTime(a3, &time1, v15, v16);
    }

    else
    {
      v6 = *(a1 + 948);
      v7 = -1;
      while (1)
      {
        v8 = v6;
        time1 = *a2;
        v22 = *(a1 + 176 + 48 * v6);
        v9 = CMTimeCompare(&time1, &v22);
        if (!v9)
        {
          goto LABEL_13;
        }

        if (v9 >= 1)
        {
          break;
        }

        if (v6 >= 1)
        {
          v10 = -1;
        }

        else
        {
          v10 = 15;
        }

        v7 = v6;
        v6 += v10;
        if (v8 == *(a1 + 944))
        {
          goto LABEL_15;
        }
      }

      if (v7 == -1)
      {
        goto LABEL_15;
      }

      time1 = *(a1 + 176 + 48 * v6);
      Seconds = CMTimeGetSeconds(&time1);
      time1 = *(a1 + 176 + 48 * v7);
      v12 = CMTimeGetSeconds(&time1);
      time1 = *a2;
      v13 = (CMTimeGetSeconds(&time1) - Seconds) / (v12 - Seconds);
      if (v13 < 0.01)
      {
LABEL_13:
        v14 = a1 + 176 + 48 * v6;
LABEL_14:
        *a3 = *(v14 + 24);
        *(a3 + 16) = *(v14 + 40);
        return;
      }

      v17 = a1 + 176;
      if (v13 > 0.99)
      {
        v14 = v17 + 48 * v7;
        goto LABEL_14;
      }

      time1 = *(v17 + 48 * v6 + 24);
      v18 = CMTimeGetSeconds(&time1);
      time1 = *(a1 + 176 + 48 * v7 + 24);
      v19 = CMTimeGetSeconds(&time1);
      v20 = a1 + 176 + 48 * v6;
      v21 = *(v20 + 32);
      *(a3 + 8) = 0;
      *(a3 + 16) = 0;
      *a3 = 0;
      CMTimeMake(&time1, (v13 * (v19 - v18) * v21), v21);
      v22 = *(v20 + 24);
      CMTimeAdd(a3, &v22, &time1);
    }
  }

  else
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
  }
}

- (__n128)_updatePTSSyncHistoryWithSourceTime:(__n128 *)a3 syncedTime:
{
  if (a1)
  {
    if (*(a1 + 944) == -1)
    {
      goto LABEL_7;
    }

    v6 = (a1 + 176 + 48 * *(a1 + 948));
    time1 = *a2;
    v14 = *v6;
    v7 = CMTimeCompare(&time1, &v14);
    if (!v7)
    {
      return result;
    }

    if (v7 < 0)
    {
LABEL_7:
      *(a1 + 944) = 0;
      *(a1 + 948) = 0;
    }

    else
    {
      *(a1 + 948) = (*(a1 + 948) + 1) % 16;
      v9 = *(a1 + 948);
      if (v9 == *(a1 + 944))
      {
        *(a1 + 944) = (v9 + 1) % 16;
      }
    }

    v10 = a1 + 176 + 48 * *(a1 + 948);
    epoch = a2->epoch;
    *v10 = *&a2->value;
    *(v10 + 16) = epoch;
    v12 = a1 + 176 + 48 * *(a1 + 948);
    v13 = a3[1].n128_u64[0];
    result = *a3;
    *(v12 + 24) = *a3;
    *(v12 + 40) = v13;
  }

  return result;
}

- (uint64_t)_synchronizeDetectedFaces:(uint64_t)a3 metadata:(int32_t)a4 timescale:
{
  v37 = result;
  if (result)
  {
    v5 = a2;
    v6 = [MEMORY[0x1E695DF70] arrayWithCapacity:{objc_msgSend(a2, "count")}];
    v56 = **&MEMORY[0x1E6960C70];
    v55 = v56;
    v51 = 0u;
    v52 = 0u;
    v53 = 0u;
    v54 = 0u;
    v14 = OUTLINED_FUNCTION_1_101(v6, v7, v8, v9, v10, v11, v12, v13, v33, a3, v37, v39, v41, v43.value, *&v43.timescale, v43.epoch, time2.value, *&time2.timescale, time2.epoch, v45, time1.value, *&time1.timescale, time1.epoch, v47, time.value, *&time.timescale, time.epoch, v49.value, *&v49.timescale, v49.epoch, v50);
    if (v14)
    {
      v15 = v14;
      v16 = *v52;
      v17 = *off_1E798B780;
      v40 = *off_1E798ACF0;
      v42 = v5;
      do
      {
        for (i = 0; i != v15; ++i)
        {
          if (*v52 != v16)
          {
            objc_enumerationMutation(v5);
          }

          v19 = *(*(&v51 + 1) + 8 * i);
          v20 = [v19 objectForKeyedSubscript:v17];
          if (v20 && (v21 = v20, memset(&v49, 0, sizeof(v49)), [v20 longLongValue], v22 = FigHostTimeToNanoseconds(), CMTimeMake(&time, v22, 1000000000), CMTimeConvertScale(&v49, &time, a4, kCMTimeRoundingMethod_RoundHalfAwayFromZero), (v49.flags & 1) != 0) && ((memset(&time, 0, sizeof(time)), time1 = v56, time2 = v49, !CMTimeCompare(&time1, &time2)) ? (time = v55) : (time1 = v49, -[BWSynchronizerNode _getSyncedTimeForSourceTime:](v38, &time1, &time), v56 = v49, v55 = time), time1 = time, CMTimeConvertScale(&v43, &time1, 1000000000, kCMTimeRoundingMethod_RoundHalfAwayFromZero), v23 = objc_msgSend(MEMORY[0x1E696AD98], "numberWithLongLong:", FigNanosecondsToHostTime()), v24 = objc_msgSend(objc_alloc(MEMORY[0x1E695DF90]), "initWithCapacity:", objc_msgSend(v19, "count") + 1), objc_msgSend(v24, "addEntriesFromDictionary:", v19), objc_msgSend(v24, "setObject:forKeyedSubscript:", v23, v17), objc_msgSend(v24, "setObject:forKeyedSubscript:", v21, v40), v5 = v42, v24))
          {
            [v6 addObject:v24];
          }

          else
          {
            v25 = [v6 addObject:v19];
          }
        }

        v15 = OUTLINED_FUNCTION_1_101(v25, v26, v27, v28, v29, v30, v31, v32, v34, v36, v38, v40, v42, v43.value, *&v43.timescale, v43.epoch, time2.value, *&time2.timescale, time2.epoch, v45, time1.value, *&time1.timescale, time1.epoch, v47, time.value, *&time.timescale, time.epoch, v49.value, *&v49.timescale, v49.epoch, v50);
      }

      while (v15);
    }

    return [v36 setObject:v6 forKeyedSubscript:*off_1E798D030];
  }

  return result;
}

- (uint64_t)renderSampleBuffer:forInput:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.2()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)renderSampleBuffer:forInput:.cold.3()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_newRetimedVideoSampleBuffer:updatePTSSyncHistory:.cold.1()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_newRetimedVideoSampleBuffer:updatePTSSyncHistory:.cold.5()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (uint64_t)_newRetimedVideoSampleBuffer:updatePTSSyncHistory:.cold.6()
{
  fig_log_get_emitter();
  OUTLINED_FUNCTION_1_6();
  return FigDebugAssert3();
}

- (void)_newRetimedVideoSampleBuffer:(const void *)a1 updatePTSSyncHistory:.cold.7(const void **a1)
{
  v2 = *a1;
  if (v2)
  {
    CFRelease(v2);
    *a1 = 0;
  }
}

@end